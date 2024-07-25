import 'dart:async';

import 'package:catalog_sample/core/app_services.dart';
import 'package:catalog_sample/core/flexible/config.dart';
import 'package:catalog_sample/core/utils/log.dart';
import 'package:catalog_sample/features/catalog/catalog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:realm/realm.dart';

late CatalogService catalogService;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // If no category is set, default is LogCategory.realm
  Realm.logger.setLogLevel(LogLevel.trace);

  Realm.logger.onRecord.listen(
    (event) {
      logInfo(event.message);
    },
  );
  await setUpRealm();

  runApp(const MyApp());
}

Future<void> setUpRealm() async {
  String configFilePath = 'assets/config/atlasConfig.json';

  final realmConfig = await RealmConfig.getConfig(configFilePath);

  // create the app service
  AppService appServices = AppService(
    id: realmConfig.appId,
    baseUrl: realmConfig.baseUrl,
  );

  final directory = await getApplicationDocumentsDirectory();

  catalogService = CatalogService(appServices.app, directory);

  // log in anonymously
  final credentials = Credentials.anonymous();
  await appServices.app.logIn(credentials);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalog Sample App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Catalog Sample App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // catalogBloc
  final catalogBloc = CatalogBloc(
    CatalogRepositoryImpl(
      CatalogRealmDataSourceImpl(
        catalogService: catalogService,
      ),
    ),
  );

  // set the catalog id
  final String catalogId = '883969a0c7fffff';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: BlocProvider(
        create: (context) => catalogBloc,
        child: BlocBuilder<CatalogBloc, CatalogState>(
          bloc: catalogBloc..add(StartListingToCatalog(catalogId: catalogId)),
          builder: (context, state) {
            if (state.status.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return SizedBox(
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 16),
                  const Text(
                    'Catalog data',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Divider(),
                  Text(
                    'shop count: ${state.catalog?.shops.length.toString() ?? ''}',
                  ),
                  Text(
                    'section count: ${state.catalog?.sections.length.toString() ?? ''}',
                  ),
                  Text(
                    'service count: ${state.catalog?.services.length.toString() ?? ''}',
                  ),
                  const Divider(),
                  const SizedBox(height: 35),
                  const Text(
                    'First shop data',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Divider(),
                  Text(
                    'id: ${state.catalog?.shops.firstOrNull?.id.toString() ?? ''}',
                  ),
                  Text(
                    'name: ${state.catalog?.shops.firstOrNull?.name.toString() ?? ''}',
                  ),
                  Text(
                    'deliveryPrice: ${state.catalog?.shops.firstOrNull?.deliveryPrice.toString() ?? ''}',
                  ),
                  const Divider(),
                ],
              ),
            );
          },
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
