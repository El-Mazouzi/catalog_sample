// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:realm/realm.dart';

class AppService with EquatableMixin {
  AppService({
    required this.id,
    required this.baseUrl,
    App? app,
  }) : app = app ?? App(AppConfiguration(id, baseUrl: baseUrl));

  final String id;
  final Uri baseUrl;
  final App app;

  @override
  List<Object> get props => [id, baseUrl, app];
}
