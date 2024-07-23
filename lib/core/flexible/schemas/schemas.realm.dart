// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schemas.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class CatalogV3 extends _CatalogV3
    with RealmEntity, RealmObjectBase, RealmObject {
  CatalogV3(
    String id, {
    Iterable<CatalogV3Sc> sc = const [],
    Iterable<CatalogV3Se> se = const [],
    Iterable<CatalogV3Shops> shops = const [],
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set<RealmList<CatalogV3Sc>>(
        this, 'sc', RealmList<CatalogV3Sc>(sc));
    RealmObjectBase.set<RealmList<CatalogV3Se>>(
        this, 'se', RealmList<CatalogV3Se>(se));
    RealmObjectBase.set<RealmList<CatalogV3Shops>>(
        this, 'shops', RealmList<CatalogV3Shops>(shops));
  }

  CatalogV3._();

  @override
  String get id => RealmObjectBase.get<String>(this, '_id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, '_id', value);

  @override
  RealmList<CatalogV3Sc> get sc =>
      RealmObjectBase.get<CatalogV3Sc>(this, 'sc') as RealmList<CatalogV3Sc>;
  @override
  set sc(covariant RealmList<CatalogV3Sc> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<CatalogV3Se> get se =>
      RealmObjectBase.get<CatalogV3Se>(this, 'se') as RealmList<CatalogV3Se>;
  @override
  set se(covariant RealmList<CatalogV3Se> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<CatalogV3Shops> get shops =>
      RealmObjectBase.get<CatalogV3Shops>(this, 'shops')
          as RealmList<CatalogV3Shops>;
  @override
  set shops(covariant RealmList<CatalogV3Shops> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<CatalogV3>> get changes =>
      RealmObjectBase.getChanges<CatalogV3>(this);

  @override
  Stream<RealmObjectChanges<CatalogV3>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CatalogV3>(this, keyPaths);

  @override
  CatalogV3 freeze() => RealmObjectBase.freezeObject<CatalogV3>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'sc': sc.toEJson(),
      'se': se.toEJson(),
      'shops': shops.toEJson(),
    };
  }

  static EJsonValue _toEJson(CatalogV3 value) => value.toEJson();
  static CatalogV3 _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'sc': EJsonValue sc,
        'se': EJsonValue se,
        'shops': EJsonValue shops,
      } =>
        CatalogV3(
          fromEJson(id),
          sc: fromEJson(sc),
          se: fromEJson(se),
          shops: fromEJson(shops),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CatalogV3._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, CatalogV3, 'catalog_v3', [
      SchemaProperty('id', RealmPropertyType.string,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('sc', RealmPropertyType.object,
          linkTarget: 'catalog_v3_sc',
          collectionType: RealmCollectionType.list),
      SchemaProperty('se', RealmPropertyType.object,
          linkTarget: 'catalog_v3_se',
          collectionType: RealmCollectionType.list),
      SchemaProperty('shops', RealmPropertyType.object,
          linkTarget: 'catalog_v3_shops',
          collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CatalogV3Se extends _CatalogV3Se
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  CatalogV3Se({
    ObjectId? id,
    bool? df,
    CatalogV3SeDn? dn,
    bool? ds,
    String? ni,
    String? nm,
    double? or,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'df', df);
    RealmObjectBase.set(this, 'dn', dn);
    RealmObjectBase.set(this, 'ds', ds);
    RealmObjectBase.set(this, 'ni', ni);
    RealmObjectBase.set(this, 'nm', nm);
    RealmObjectBase.set(this, 'or', or);
  }

  CatalogV3Se._();

  @override
  ObjectId? get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set id(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  bool? get df => RealmObjectBase.get<bool>(this, 'df') as bool?;
  @override
  set df(bool? value) => RealmObjectBase.set(this, 'df', value);

  @override
  CatalogV3SeDn? get dn =>
      RealmObjectBase.get<CatalogV3SeDn>(this, 'dn') as CatalogV3SeDn?;
  @override
  set dn(covariant CatalogV3SeDn? value) =>
      RealmObjectBase.set(this, 'dn', value);

  @override
  bool? get ds => RealmObjectBase.get<bool>(this, 'ds') as bool?;
  @override
  set ds(bool? value) => RealmObjectBase.set(this, 'ds', value);

  @override
  String? get ni => RealmObjectBase.get<String>(this, 'ni') as String?;
  @override
  set ni(String? value) => RealmObjectBase.set(this, 'ni', value);

  @override
  String? get nm => RealmObjectBase.get<String>(this, 'nm') as String?;
  @override
  set nm(String? value) => RealmObjectBase.set(this, 'nm', value);

  @override
  double? get or => RealmObjectBase.get<double>(this, 'or') as double?;
  @override
  set or(double? value) => RealmObjectBase.set(this, 'or', value);

  @override
  Stream<RealmObjectChanges<CatalogV3Se>> get changes =>
      RealmObjectBase.getChanges<CatalogV3Se>(this);

  @override
  Stream<RealmObjectChanges<CatalogV3Se>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CatalogV3Se>(this, keyPaths);

  @override
  CatalogV3Se freeze() => RealmObjectBase.freezeObject<CatalogV3Se>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'df': df.toEJson(),
      'dn': dn.toEJson(),
      'ds': ds.toEJson(),
      'ni': ni.toEJson(),
      'nm': nm.toEJson(),
      'or': or.toEJson(),
    };
  }

  static EJsonValue _toEJson(CatalogV3Se value) => value.toEJson();
  static CatalogV3Se _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'df': EJsonValue df,
        'dn': EJsonValue dn,
        'ds': EJsonValue ds,
        'ni': EJsonValue ni,
        'nm': EJsonValue nm,
        'or': EJsonValue or,
      } =>
        CatalogV3Se(
          id: fromEJson(id),
          df: fromEJson(df),
          dn: fromEJson(dn),
          ds: fromEJson(ds),
          ni: fromEJson(ni),
          nm: fromEJson(nm),
          or: fromEJson(or),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CatalogV3Se._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, CatalogV3Se, 'catalog_v3_se', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('df', RealmPropertyType.bool, optional: true),
      SchemaProperty('dn', RealmPropertyType.object,
          optional: true, linkTarget: 'catalog_v3_se_dn'),
      SchemaProperty('ds', RealmPropertyType.bool, optional: true),
      SchemaProperty('ni', RealmPropertyType.string, optional: true),
      SchemaProperty('nm', RealmPropertyType.string, optional: true),
      SchemaProperty('or', RealmPropertyType.double, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CatalogV3Sc extends _CatalogV3Sc
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  CatalogV3Sc({
    ObjectId? id,
    CatalogV3ScDe? de,
    CatalogV3ScDn? dn,
    String? nm,
    double? or,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'de', de);
    RealmObjectBase.set(this, 'dn', dn);
    RealmObjectBase.set(this, 'nm', nm);
    RealmObjectBase.set(this, 'or', or);
  }

  CatalogV3Sc._();

  @override
  ObjectId? get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set id(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  CatalogV3ScDe? get de =>
      RealmObjectBase.get<CatalogV3ScDe>(this, 'de') as CatalogV3ScDe?;
  @override
  set de(covariant CatalogV3ScDe? value) =>
      RealmObjectBase.set(this, 'de', value);

  @override
  CatalogV3ScDn? get dn =>
      RealmObjectBase.get<CatalogV3ScDn>(this, 'dn') as CatalogV3ScDn?;
  @override
  set dn(covariant CatalogV3ScDn? value) =>
      RealmObjectBase.set(this, 'dn', value);

  @override
  String? get nm => RealmObjectBase.get<String>(this, 'nm') as String?;
  @override
  set nm(String? value) => RealmObjectBase.set(this, 'nm', value);

  @override
  double? get or => RealmObjectBase.get<double>(this, 'or') as double?;
  @override
  set or(double? value) => RealmObjectBase.set(this, 'or', value);

  @override
  Stream<RealmObjectChanges<CatalogV3Sc>> get changes =>
      RealmObjectBase.getChanges<CatalogV3Sc>(this);

  @override
  Stream<RealmObjectChanges<CatalogV3Sc>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CatalogV3Sc>(this, keyPaths);

  @override
  CatalogV3Sc freeze() => RealmObjectBase.freezeObject<CatalogV3Sc>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'de': de.toEJson(),
      'dn': dn.toEJson(),
      'nm': nm.toEJson(),
      'or': or.toEJson(),
    };
  }

  static EJsonValue _toEJson(CatalogV3Sc value) => value.toEJson();
  static CatalogV3Sc _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'de': EJsonValue de,
        'dn': EJsonValue dn,
        'nm': EJsonValue nm,
        'or': EJsonValue or,
      } =>
        CatalogV3Sc(
          id: fromEJson(id),
          de: fromEJson(de),
          dn: fromEJson(dn),
          nm: fromEJson(nm),
          or: fromEJson(or),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CatalogV3Sc._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, CatalogV3Sc, 'catalog_v3_sc', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('de', RealmPropertyType.object,
          optional: true, linkTarget: 'catalog_v3_sc_de'),
      SchemaProperty('dn', RealmPropertyType.object,
          optional: true, linkTarget: 'catalog_v3_sc_dn'),
      SchemaProperty('nm', RealmPropertyType.string, optional: true),
      SchemaProperty('or', RealmPropertyType.double, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CatalogV3Shops extends _CatalogV3Shops
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  CatalogV3Shops({
    ObjectId? shop,
    double? dist,
    double? dm,
    double? dp,
    String? dt,
    String? h3,
  }) {
    RealmObjectBase.set(this, '_id', shop);
    RealmObjectBase.set(this, 'dist', dist);
    RealmObjectBase.set(this, 'dm', dm);
    RealmObjectBase.set(this, 'dp', dp);
    RealmObjectBase.set(this, 'dt', dt);
    RealmObjectBase.set(this, 'h3', h3);
  }

  CatalogV3Shops._();

  @override
  ObjectId? get shop => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set shop(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  double? get dist => RealmObjectBase.get<double>(this, 'dist') as double?;
  @override
  set dist(double? value) => RealmObjectBase.set(this, 'dist', value);

  @override
  double? get dm => RealmObjectBase.get<double>(this, 'dm') as double?;
  @override
  set dm(double? value) => RealmObjectBase.set(this, 'dm', value);

  @override
  double? get dp => RealmObjectBase.get<double>(this, 'dp') as double?;
  @override
  set dp(double? value) => RealmObjectBase.set(this, 'dp', value);

  @override
  String? get dt => RealmObjectBase.get<String>(this, 'dt') as String?;
  @override
  set dt(String? value) => RealmObjectBase.set(this, 'dt', value);

  @override
  String? get h3 => RealmObjectBase.get<String>(this, 'h3') as String?;
  @override
  set h3(String? value) => RealmObjectBase.set(this, 'h3', value);

  @override
  Stream<RealmObjectChanges<CatalogV3Shops>> get changes =>
      RealmObjectBase.getChanges<CatalogV3Shops>(this);

  @override
  Stream<RealmObjectChanges<CatalogV3Shops>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CatalogV3Shops>(this, keyPaths);

  @override
  CatalogV3Shops freeze() => RealmObjectBase.freezeObject<CatalogV3Shops>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': shop.toEJson(),
      'dist': dist.toEJson(),
      'dm': dm.toEJson(),
      'dp': dp.toEJson(),
      'dt': dt.toEJson(),
      'h3': h3.toEJson(),
    };
  }

  static EJsonValue _toEJson(CatalogV3Shops value) => value.toEJson();
  static CatalogV3Shops _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue shop,
        'dist': EJsonValue dist,
        'dm': EJsonValue dm,
        'dp': EJsonValue dp,
        'dt': EJsonValue dt,
        'h3': EJsonValue h3,
      } =>
        CatalogV3Shops(
          shop: fromEJson(shop),
          dist: fromEJson(dist),
          dm: fromEJson(dm),
          dp: fromEJson(dp),
          dt: fromEJson(dt),
          h3: fromEJson(h3),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CatalogV3Shops._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, CatalogV3Shops, 'catalog_v3_shops', [
      SchemaProperty('shop', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('dist', RealmPropertyType.double, optional: true),
      SchemaProperty('dm', RealmPropertyType.double, optional: true),
      SchemaProperty('dp', RealmPropertyType.double, optional: true),
      SchemaProperty('dt', RealmPropertyType.string, optional: true),
      SchemaProperty('h3', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CatalogV3SeDn extends _CatalogV3SeDn
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  CatalogV3SeDn({
    String? ar,
    String? en,
    String? fr,
  }) {
    RealmObjectBase.set(this, 'ar', ar);
    RealmObjectBase.set(this, 'en', en);
    RealmObjectBase.set(this, 'fr', fr);
  }

  CatalogV3SeDn._();

  @override
  String? get ar => RealmObjectBase.get<String>(this, 'ar') as String?;
  @override
  set ar(String? value) => RealmObjectBase.set(this, 'ar', value);

  @override
  String? get en => RealmObjectBase.get<String>(this, 'en') as String?;
  @override
  set en(String? value) => RealmObjectBase.set(this, 'en', value);

  @override
  String? get fr => RealmObjectBase.get<String>(this, 'fr') as String?;
  @override
  set fr(String? value) => RealmObjectBase.set(this, 'fr', value);

  @override
  Stream<RealmObjectChanges<CatalogV3SeDn>> get changes =>
      RealmObjectBase.getChanges<CatalogV3SeDn>(this);

  @override
  Stream<RealmObjectChanges<CatalogV3SeDn>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CatalogV3SeDn>(this, keyPaths);

  @override
  CatalogV3SeDn freeze() => RealmObjectBase.freezeObject<CatalogV3SeDn>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'ar': ar.toEJson(),
      'en': en.toEJson(),
      'fr': fr.toEJson(),
    };
  }

  static EJsonValue _toEJson(CatalogV3SeDn value) => value.toEJson();
  static CatalogV3SeDn _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'ar': EJsonValue ar,
        'en': EJsonValue en,
        'fr': EJsonValue fr,
      } =>
        CatalogV3SeDn(
          ar: fromEJson(ar),
          en: fromEJson(en),
          fr: fromEJson(fr),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CatalogV3SeDn._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, CatalogV3SeDn, 'catalog_v3_se_dn', [
      SchemaProperty('ar', RealmPropertyType.string, optional: true),
      SchemaProperty('en', RealmPropertyType.string, optional: true),
      SchemaProperty('fr', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CatalogV3ScDn extends _CatalogV3ScDn
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  CatalogV3ScDn({
    String? ar,
    String? en,
    String? fr,
  }) {
    RealmObjectBase.set(this, 'ar', ar);
    RealmObjectBase.set(this, 'en', en);
    RealmObjectBase.set(this, 'fr', fr);
  }

  CatalogV3ScDn._();

  @override
  String? get ar => RealmObjectBase.get<String>(this, 'ar') as String?;
  @override
  set ar(String? value) => RealmObjectBase.set(this, 'ar', value);

  @override
  String? get en => RealmObjectBase.get<String>(this, 'en') as String?;
  @override
  set en(String? value) => RealmObjectBase.set(this, 'en', value);

  @override
  String? get fr => RealmObjectBase.get<String>(this, 'fr') as String?;
  @override
  set fr(String? value) => RealmObjectBase.set(this, 'fr', value);

  @override
  Stream<RealmObjectChanges<CatalogV3ScDn>> get changes =>
      RealmObjectBase.getChanges<CatalogV3ScDn>(this);

  @override
  Stream<RealmObjectChanges<CatalogV3ScDn>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CatalogV3ScDn>(this, keyPaths);

  @override
  CatalogV3ScDn freeze() => RealmObjectBase.freezeObject<CatalogV3ScDn>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'ar': ar.toEJson(),
      'en': en.toEJson(),
      'fr': fr.toEJson(),
    };
  }

  static EJsonValue _toEJson(CatalogV3ScDn value) => value.toEJson();
  static CatalogV3ScDn _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'ar': EJsonValue ar,
        'en': EJsonValue en,
        'fr': EJsonValue fr,
      } =>
        CatalogV3ScDn(
          ar: fromEJson(ar),
          en: fromEJson(en),
          fr: fromEJson(fr),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CatalogV3ScDn._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, CatalogV3ScDn, 'catalog_v3_sc_dn', [
      SchemaProperty('ar', RealmPropertyType.string, optional: true),
      SchemaProperty('en', RealmPropertyType.string, optional: true),
      SchemaProperty('fr', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CatalogV3ScDe extends _CatalogV3ScDe
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  CatalogV3ScDe({
    String? ar,
    String? en,
    String? fr,
  }) {
    RealmObjectBase.set(this, 'ar', ar);
    RealmObjectBase.set(this, 'en', en);
    RealmObjectBase.set(this, 'fr', fr);
  }

  CatalogV3ScDe._();

  @override
  String? get ar => RealmObjectBase.get<String>(this, 'ar') as String?;
  @override
  set ar(String? value) => RealmObjectBase.set(this, 'ar', value);

  @override
  String? get en => RealmObjectBase.get<String>(this, 'en') as String?;
  @override
  set en(String? value) => RealmObjectBase.set(this, 'en', value);

  @override
  String? get fr => RealmObjectBase.get<String>(this, 'fr') as String?;
  @override
  set fr(String? value) => RealmObjectBase.set(this, 'fr', value);

  @override
  Stream<RealmObjectChanges<CatalogV3ScDe>> get changes =>
      RealmObjectBase.getChanges<CatalogV3ScDe>(this);

  @override
  Stream<RealmObjectChanges<CatalogV3ScDe>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CatalogV3ScDe>(this, keyPaths);

  @override
  CatalogV3ScDe freeze() => RealmObjectBase.freezeObject<CatalogV3ScDe>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'ar': ar.toEJson(),
      'en': en.toEJson(),
      'fr': fr.toEJson(),
    };
  }

  static EJsonValue _toEJson(CatalogV3ScDe value) => value.toEJson();
  static CatalogV3ScDe _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'ar': EJsonValue ar,
        'en': EJsonValue en,
        'fr': EJsonValue fr,
      } =>
        CatalogV3ScDe(
          ar: fromEJson(ar),
          en: fromEJson(en),
          fr: fromEJson(fr),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CatalogV3ScDe._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, CatalogV3ScDe, 'catalog_v3_sc_de', [
      SchemaProperty('ar', RealmPropertyType.string, optional: true),
      SchemaProperty('en', RealmPropertyType.string, optional: true),
      SchemaProperty('fr', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Shop extends _Shop with RealmEntity, RealmObjectBase, RealmObject {
  Shop(
    ObjectId id, {
    String? ad,
    String? cc,
    Iterable<ShopCt> ct = const [],
    Iterable<String> cu = const [],
    Iterable<ShopDlv> dlv = const [],
    double? dm,
    String? dt,
    String? im,
    ShopLoc? loc,
    double? min,
    String? nm,
    Iterable<ShopOfr> ofr = const [],
    Iterable<String> op = const [],
    int? pr,
    int? pt,
    double? rt,
    double? rv,
    Iterable<ObjectId> sc = const [],
    Iterable<ObjectId> se = const [],
    double? svc,
    int? t,
    ShopsOff? off,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'ad', ad);
    RealmObjectBase.set(this, 'cc', cc);
    RealmObjectBase.set<RealmList<ShopCt>>(this, 'ct', RealmList<ShopCt>(ct));
    RealmObjectBase.set<RealmList<String>>(this, 'cu', RealmList<String>(cu));
    RealmObjectBase.set<RealmList<ShopDlv>>(
        this, 'dlv', RealmList<ShopDlv>(dlv));
    RealmObjectBase.set(this, 'dm', dm);
    RealmObjectBase.set(this, 'dt', dt);
    RealmObjectBase.set(this, 'im', im);
    RealmObjectBase.set(this, 'loc', loc);
    RealmObjectBase.set(this, 'min', min);
    RealmObjectBase.set(this, 'nm', nm);
    RealmObjectBase.set<RealmList<ShopOfr>>(
        this, 'ofr', RealmList<ShopOfr>(ofr));
    RealmObjectBase.set<RealmList<String>>(this, 'op', RealmList<String>(op));
    RealmObjectBase.set(this, 'pr', pr);
    RealmObjectBase.set(this, 'pt', pt);
    RealmObjectBase.set(this, 'rt', rt);
    RealmObjectBase.set(this, 'rv', rv);
    RealmObjectBase.set<RealmList<ObjectId>>(
        this, 'sc', RealmList<ObjectId>(sc));
    RealmObjectBase.set<RealmList<ObjectId>>(
        this, 'se', RealmList<ObjectId>(se));
    RealmObjectBase.set(this, 'svc', svc);
    RealmObjectBase.set(this, 't', t);
    RealmObjectBase.set(this, 'off', off);
  }

  Shop._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String? get ad => RealmObjectBase.get<String>(this, 'ad') as String?;
  @override
  set ad(String? value) => RealmObjectBase.set(this, 'ad', value);

  @override
  String? get cc => RealmObjectBase.get<String>(this, 'cc') as String?;
  @override
  set cc(String? value) => RealmObjectBase.set(this, 'cc', value);

  @override
  RealmList<ShopCt> get ct =>
      RealmObjectBase.get<ShopCt>(this, 'ct') as RealmList<ShopCt>;
  @override
  set ct(covariant RealmList<ShopCt> value) => throw RealmUnsupportedSetError();

  @override
  RealmList<String> get cu =>
      RealmObjectBase.get<String>(this, 'cu') as RealmList<String>;
  @override
  set cu(covariant RealmList<String> value) => throw RealmUnsupportedSetError();

  @override
  RealmList<ShopDlv> get dlv =>
      RealmObjectBase.get<ShopDlv>(this, 'dlv') as RealmList<ShopDlv>;
  @override
  set dlv(covariant RealmList<ShopDlv> value) =>
      throw RealmUnsupportedSetError();

  @override
  double? get dm => RealmObjectBase.get<double>(this, 'dm') as double?;
  @override
  set dm(double? value) => RealmObjectBase.set(this, 'dm', value);

  @override
  String? get dt => RealmObjectBase.get<String>(this, 'dt') as String?;
  @override
  set dt(String? value) => RealmObjectBase.set(this, 'dt', value);

  @override
  String? get im => RealmObjectBase.get<String>(this, 'im') as String?;
  @override
  set im(String? value) => RealmObjectBase.set(this, 'im', value);

  @override
  ShopLoc? get loc => RealmObjectBase.get<ShopLoc>(this, 'loc') as ShopLoc?;
  @override
  set loc(covariant ShopLoc? value) => RealmObjectBase.set(this, 'loc', value);

  @override
  double? get min => RealmObjectBase.get<double>(this, 'min') as double?;
  @override
  set min(double? value) => RealmObjectBase.set(this, 'min', value);

  @override
  String? get nm => RealmObjectBase.get<String>(this, 'nm') as String?;
  @override
  set nm(String? value) => RealmObjectBase.set(this, 'nm', value);

  @override
  RealmList<ShopOfr> get ofr =>
      RealmObjectBase.get<ShopOfr>(this, 'ofr') as RealmList<ShopOfr>;
  @override
  set ofr(covariant RealmList<ShopOfr> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get op =>
      RealmObjectBase.get<String>(this, 'op') as RealmList<String>;
  @override
  set op(covariant RealmList<String> value) => throw RealmUnsupportedSetError();

  @override
  int? get pr => RealmObjectBase.get<int>(this, 'pr') as int?;
  @override
  set pr(int? value) => RealmObjectBase.set(this, 'pr', value);

  @override
  int? get pt => RealmObjectBase.get<int>(this, 'pt') as int?;
  @override
  set pt(int? value) => RealmObjectBase.set(this, 'pt', value);

  @override
  double? get rt => RealmObjectBase.get<double>(this, 'rt') as double?;
  @override
  set rt(double? value) => RealmObjectBase.set(this, 'rt', value);

  @override
  double? get rv => RealmObjectBase.get<double>(this, 'rv') as double?;
  @override
  set rv(double? value) => RealmObjectBase.set(this, 'rv', value);

  @override
  RealmList<ObjectId> get sc =>
      RealmObjectBase.get<ObjectId>(this, 'sc') as RealmList<ObjectId>;
  @override
  set sc(covariant RealmList<ObjectId> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<ObjectId> get se =>
      RealmObjectBase.get<ObjectId>(this, 'se') as RealmList<ObjectId>;
  @override
  set se(covariant RealmList<ObjectId> value) =>
      throw RealmUnsupportedSetError();

  @override
  double? get svc => RealmObjectBase.get<double>(this, 'svc') as double?;
  @override
  set svc(double? value) => RealmObjectBase.set(this, 'svc', value);

  @override
  int? get t => RealmObjectBase.get<int>(this, 't') as int?;
  @override
  set t(int? value) => RealmObjectBase.set(this, 't', value);

  @override
  ShopsOff? get off => RealmObjectBase.get<ShopsOff>(this, 'off') as ShopsOff?;
  @override
  set off(covariant ShopsOff? value) => RealmObjectBase.set(this, 'off', value);

  @override
  Stream<RealmObjectChanges<Shop>> get changes =>
      RealmObjectBase.getChanges<Shop>(this);

  @override
  Stream<RealmObjectChanges<Shop>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Shop>(this, keyPaths);

  @override
  Shop freeze() => RealmObjectBase.freezeObject<Shop>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'ad': ad.toEJson(),
      'cc': cc.toEJson(),
      'ct': ct.toEJson(),
      'cu': cu.toEJson(),
      'dlv': dlv.toEJson(),
      'dm': dm.toEJson(),
      'dt': dt.toEJson(),
      'im': im.toEJson(),
      'loc': loc.toEJson(),
      'min': min.toEJson(),
      'nm': nm.toEJson(),
      'ofr': ofr.toEJson(),
      'op': op.toEJson(),
      'pr': pr.toEJson(),
      'pt': pt.toEJson(),
      'rt': rt.toEJson(),
      'rv': rv.toEJson(),
      'sc': sc.toEJson(),
      'se': se.toEJson(),
      'svc': svc.toEJson(),
      't': t.toEJson(),
      'off': off.toEJson(),
    };
  }

  static EJsonValue _toEJson(Shop value) => value.toEJson();
  static Shop _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'ad': EJsonValue ad,
        'cc': EJsonValue cc,
        'ct': EJsonValue ct,
        'cu': EJsonValue cu,
        'dlv': EJsonValue dlv,
        'dm': EJsonValue dm,
        'dt': EJsonValue dt,
        'im': EJsonValue im,
        'loc': EJsonValue loc,
        'min': EJsonValue min,
        'nm': EJsonValue nm,
        'ofr': EJsonValue ofr,
        'op': EJsonValue op,
        'pr': EJsonValue pr,
        'pt': EJsonValue pt,
        'rt': EJsonValue rt,
        'rv': EJsonValue rv,
        'sc': EJsonValue sc,
        'se': EJsonValue se,
        'svc': EJsonValue svc,
        't': EJsonValue t,
        'off': EJsonValue off,
      } =>
        Shop(
          fromEJson(id),
          ad: fromEJson(ad),
          cc: fromEJson(cc),
          ct: fromEJson(ct),
          cu: fromEJson(cu),
          dlv: fromEJson(dlv),
          dm: fromEJson(dm),
          dt: fromEJson(dt),
          im: fromEJson(im),
          loc: fromEJson(loc),
          min: fromEJson(min),
          nm: fromEJson(nm),
          ofr: fromEJson(ofr),
          op: fromEJson(op),
          pr: fromEJson(pr),
          pt: fromEJson(pt),
          rt: fromEJson(rt),
          rv: fromEJson(rv),
          sc: fromEJson(sc),
          se: fromEJson(se),
          svc: fromEJson(svc),
          t: fromEJson(t),
          off: fromEJson(off),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Shop._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Shop, 'shop', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('ad', RealmPropertyType.string, optional: true),
      SchemaProperty('cc', RealmPropertyType.string, optional: true),
      SchemaProperty('ct', RealmPropertyType.object,
          linkTarget: 'shop_ct', collectionType: RealmCollectionType.list),
      SchemaProperty('cu', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('dlv', RealmPropertyType.object,
          linkTarget: 'shop_dlv', collectionType: RealmCollectionType.list),
      SchemaProperty('dm', RealmPropertyType.double, optional: true),
      SchemaProperty('dt', RealmPropertyType.string, optional: true),
      SchemaProperty('im', RealmPropertyType.string, optional: true),
      SchemaProperty('loc', RealmPropertyType.object,
          optional: true, linkTarget: 'shop_loc'),
      SchemaProperty('min', RealmPropertyType.double, optional: true),
      SchemaProperty('nm', RealmPropertyType.string, optional: true),
      SchemaProperty('ofr', RealmPropertyType.object,
          linkTarget: 'shop_ofr', collectionType: RealmCollectionType.list),
      SchemaProperty('op', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('pr', RealmPropertyType.int, optional: true),
      SchemaProperty('pt', RealmPropertyType.int, optional: true),
      SchemaProperty('rt', RealmPropertyType.double, optional: true),
      SchemaProperty('rv', RealmPropertyType.double, optional: true),
      SchemaProperty('sc', RealmPropertyType.objectid,
          collectionType: RealmCollectionType.list),
      SchemaProperty('se', RealmPropertyType.objectid,
          collectionType: RealmCollectionType.list),
      SchemaProperty('svc', RealmPropertyType.double, optional: true),
      SchemaProperty('t', RealmPropertyType.int, optional: true),
      SchemaProperty('off', RealmPropertyType.object,
          optional: true, linkTarget: 'shops_off'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopsOff extends _ShopsOff
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopsOff({
    double? mo,
    double? oa,
    int? ot,
    double? ta,
  }) {
    RealmObjectBase.set(this, 'mo', mo);
    RealmObjectBase.set(this, 'oa', oa);
    RealmObjectBase.set(this, 'ot', ot);
    RealmObjectBase.set(this, 'ta', ta);
  }

  ShopsOff._();

  @override
  double? get mo => RealmObjectBase.get<double>(this, 'mo') as double?;
  @override
  set mo(double? value) => RealmObjectBase.set(this, 'mo', value);

  @override
  double? get oa => RealmObjectBase.get<double>(this, 'oa') as double?;
  @override
  set oa(double? value) => RealmObjectBase.set(this, 'oa', value);

  @override
  int? get ot => RealmObjectBase.get<int>(this, 'ot') as int?;
  @override
  set ot(int? value) => RealmObjectBase.set(this, 'ot', value);

  @override
  double? get ta => RealmObjectBase.get<double>(this, 'ta') as double?;
  @override
  set ta(double? value) => RealmObjectBase.set(this, 'ta', value);

  @override
  Stream<RealmObjectChanges<ShopsOff>> get changes =>
      RealmObjectBase.getChanges<ShopsOff>(this);

  @override
  Stream<RealmObjectChanges<ShopsOff>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopsOff>(this, keyPaths);

  @override
  ShopsOff freeze() => RealmObjectBase.freezeObject<ShopsOff>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'mo': mo.toEJson(),
      'oa': oa.toEJson(),
      'ot': ot.toEJson(),
      'ta': ta.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopsOff value) => value.toEJson();
  static ShopsOff _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'mo': EJsonValue mo,
        'oa': EJsonValue oa,
        'ot': EJsonValue ot,
        'ta': EJsonValue ta,
      } =>
        ShopsOff(
          mo: fromEJson(mo),
          oa: fromEJson(oa),
          ot: fromEJson(ot),
          ta: fromEJson(ta),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopsOff._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopsOff, 'shops_off', [
      SchemaProperty('mo', RealmPropertyType.double, optional: true),
      SchemaProperty('oa', RealmPropertyType.double, optional: true),
      SchemaProperty('ot', RealmPropertyType.int, optional: true),
      SchemaProperty('ta', RealmPropertyType.double, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopOfr extends _ShopOfr
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopOfr({
    ObjectId? id,
    ShopOfrB? b,
    bool? c,
    ShopOfrG? g,
    ShopOfrN? n,
    int? t,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'b', b);
    RealmObjectBase.set(this, 'c', c);
    RealmObjectBase.set(this, 'g', g);
    RealmObjectBase.set(this, 'n', n);
    RealmObjectBase.set(this, 't', t);
  }

  ShopOfr._();

  @override
  ObjectId? get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set id(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  ShopOfrB? get b => RealmObjectBase.get<ShopOfrB>(this, 'b') as ShopOfrB?;
  @override
  set b(covariant ShopOfrB? value) => RealmObjectBase.set(this, 'b', value);

  @override
  bool? get c => RealmObjectBase.get<bool>(this, 'c') as bool?;
  @override
  set c(bool? value) => RealmObjectBase.set(this, 'c', value);

  @override
  ShopOfrG? get g => RealmObjectBase.get<ShopOfrG>(this, 'g') as ShopOfrG?;
  @override
  set g(covariant ShopOfrG? value) => RealmObjectBase.set(this, 'g', value);

  @override
  ShopOfrN? get n => RealmObjectBase.get<ShopOfrN>(this, 'n') as ShopOfrN?;
  @override
  set n(covariant ShopOfrN? value) => RealmObjectBase.set(this, 'n', value);

  @override
  int? get t => RealmObjectBase.get<int>(this, 't') as int?;
  @override
  set t(int? value) => RealmObjectBase.set(this, 't', value);

  @override
  Stream<RealmObjectChanges<ShopOfr>> get changes =>
      RealmObjectBase.getChanges<ShopOfr>(this);

  @override
  Stream<RealmObjectChanges<ShopOfr>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopOfr>(this, keyPaths);

  @override
  ShopOfr freeze() => RealmObjectBase.freezeObject<ShopOfr>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'b': b.toEJson(),
      'c': c.toEJson(),
      'g': g.toEJson(),
      'n': n.toEJson(),
      't': t.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopOfr value) => value.toEJson();
  static ShopOfr _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'b': EJsonValue b,
        'c': EJsonValue c,
        'g': EJsonValue g,
        'n': EJsonValue n,
        't': EJsonValue t,
      } =>
        ShopOfr(
          id: fromEJson(id),
          b: fromEJson(b),
          c: fromEJson(c),
          g: fromEJson(g),
          n: fromEJson(n),
          t: fromEJson(t),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopOfr._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopOfr, 'shop_ofr', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('b', RealmPropertyType.object,
          optional: true, linkTarget: 'shop_ofr_b'),
      SchemaProperty('c', RealmPropertyType.bool, optional: true),
      SchemaProperty('g', RealmPropertyType.object,
          optional: true, linkTarget: 'shop_ofr_g'),
      SchemaProperty('n', RealmPropertyType.object,
          optional: true, linkTarget: 'shop_ofr_n'),
      SchemaProperty('t', RealmPropertyType.int, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopOfrB extends _ShopOfrB
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopOfrB({
    ObjectId? e,
    String? n,
    int? q,
  }) {
    RealmObjectBase.set(this, 'e', e);
    RealmObjectBase.set(this, 'n', n);
    RealmObjectBase.set(this, 'q', q);
  }

  ShopOfrB._();

  @override
  ObjectId? get e => RealmObjectBase.get<ObjectId>(this, 'e') as ObjectId?;
  @override
  set e(ObjectId? value) => RealmObjectBase.set(this, 'e', value);

  @override
  String? get n => RealmObjectBase.get<String>(this, 'n') as String?;
  @override
  set n(String? value) => RealmObjectBase.set(this, 'n', value);

  @override
  int? get q => RealmObjectBase.get<int>(this, 'q') as int?;
  @override
  set q(int? value) => RealmObjectBase.set(this, 'q', value);

  @override
  Stream<RealmObjectChanges<ShopOfrB>> get changes =>
      RealmObjectBase.getChanges<ShopOfrB>(this);

  @override
  Stream<RealmObjectChanges<ShopOfrB>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopOfrB>(this, keyPaths);

  @override
  ShopOfrB freeze() => RealmObjectBase.freezeObject<ShopOfrB>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'e': e.toEJson(),
      'n': n.toEJson(),
      'q': q.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopOfrB value) => value.toEJson();
  static ShopOfrB _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'e': EJsonValue e,
        'n': EJsonValue n,
        'q': EJsonValue q,
      } =>
        ShopOfrB(
          e: fromEJson(e),
          n: fromEJson(n),
          q: fromEJson(q),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopOfrB._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopOfrB, 'shop_ofr_b', [
      SchemaProperty('e', RealmPropertyType.objectid, optional: true),
      SchemaProperty('n', RealmPropertyType.string, optional: true),
      SchemaProperty('q', RealmPropertyType.int, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopOfrN extends _ShopOfrN
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopOfrN({
    String? ar,
    String? en,
    String? fr,
    String? n,
  }) {
    RealmObjectBase.set(this, 'ar', ar);
    RealmObjectBase.set(this, 'en', en);
    RealmObjectBase.set(this, 'fr', fr);
    RealmObjectBase.set(this, 'n', n);
  }

  ShopOfrN._();

  @override
  String? get ar => RealmObjectBase.get<String>(this, 'ar') as String?;
  @override
  set ar(String? value) => RealmObjectBase.set(this, 'ar', value);

  @override
  String? get en => RealmObjectBase.get<String>(this, 'en') as String?;
  @override
  set en(String? value) => RealmObjectBase.set(this, 'en', value);

  @override
  String? get fr => RealmObjectBase.get<String>(this, 'fr') as String?;
  @override
  set fr(String? value) => RealmObjectBase.set(this, 'fr', value);

  @override
  String? get n => RealmObjectBase.get<String>(this, 'n') as String?;
  @override
  set n(String? value) => RealmObjectBase.set(this, 'n', value);

  @override
  Stream<RealmObjectChanges<ShopOfrN>> get changes =>
      RealmObjectBase.getChanges<ShopOfrN>(this);

  @override
  Stream<RealmObjectChanges<ShopOfrN>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopOfrN>(this, keyPaths);

  @override
  ShopOfrN freeze() => RealmObjectBase.freezeObject<ShopOfrN>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'ar': ar.toEJson(),
      'en': en.toEJson(),
      'fr': fr.toEJson(),
      'n': n.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopOfrN value) => value.toEJson();
  static ShopOfrN _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'ar': EJsonValue ar,
        'en': EJsonValue en,
        'fr': EJsonValue fr,
        'n': EJsonValue n,
      } =>
        ShopOfrN(
          ar: fromEJson(ar),
          en: fromEJson(en),
          fr: fromEJson(fr),
          n: fromEJson(n),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopOfrN._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopOfrN, 'shop_ofr_n', [
      SchemaProperty('ar', RealmPropertyType.string, optional: true),
      SchemaProperty('en', RealmPropertyType.string, optional: true),
      SchemaProperty('fr', RealmPropertyType.string, optional: true),
      SchemaProperty('n', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopOfrGEls extends _ShopOfrGEls
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopOfrGEls({
    ObjectId? id,
    double? d,
    String? n,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'd', d);
    RealmObjectBase.set(this, 'n', n);
  }

  ShopOfrGEls._();

  @override
  ObjectId? get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set id(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  double? get d => RealmObjectBase.get<double>(this, 'd') as double?;
  @override
  set d(double? value) => RealmObjectBase.set(this, 'd', value);

  @override
  String? get n => RealmObjectBase.get<String>(this, 'n') as String?;
  @override
  set n(String? value) => RealmObjectBase.set(this, 'n', value);

  @override
  Stream<RealmObjectChanges<ShopOfrGEls>> get changes =>
      RealmObjectBase.getChanges<ShopOfrGEls>(this);

  @override
  Stream<RealmObjectChanges<ShopOfrGEls>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopOfrGEls>(this, keyPaths);

  @override
  ShopOfrGEls freeze() => RealmObjectBase.freezeObject<ShopOfrGEls>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'd': d.toEJson(),
      'n': n.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopOfrGEls value) => value.toEJson();
  static ShopOfrGEls _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'd': EJsonValue d,
        'n': EJsonValue n,
      } =>
        ShopOfrGEls(
          id: fromEJson(id),
          d: fromEJson(d),
          n: fromEJson(n),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopOfrGEls._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, ShopOfrGEls, 'shop_ofr_g_els', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('d', RealmPropertyType.double, optional: true),
      SchemaProperty('n', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopCt extends _ShopCt with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopCt({
    ObjectId? id,
    String? i,
    Iterable<ShopCtL> l = const [],
    String? n,
    double? o,
    ObjectId? p,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'i', i);
    RealmObjectBase.set<RealmList<ShopCtL>>(this, 'l', RealmList<ShopCtL>(l));
    RealmObjectBase.set(this, 'n', n);
    RealmObjectBase.set(this, 'o', o);
    RealmObjectBase.set(this, 'p', p);
  }

  ShopCt._();

  @override
  ObjectId? get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set id(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  String? get i => RealmObjectBase.get<String>(this, 'i') as String?;
  @override
  set i(String? value) => RealmObjectBase.set(this, 'i', value);

  @override
  RealmList<ShopCtL> get l =>
      RealmObjectBase.get<ShopCtL>(this, 'l') as RealmList<ShopCtL>;
  @override
  set l(covariant RealmList<ShopCtL> value) => throw RealmUnsupportedSetError();

  @override
  String? get n => RealmObjectBase.get<String>(this, 'n') as String?;
  @override
  set n(String? value) => RealmObjectBase.set(this, 'n', value);

  @override
  double? get o => RealmObjectBase.get<double>(this, 'o') as double?;
  @override
  set o(double? value) => RealmObjectBase.set(this, 'o', value);

  @override
  ObjectId? get p => RealmObjectBase.get<ObjectId>(this, 'p') as ObjectId?;
  @override
  set p(ObjectId? value) => RealmObjectBase.set(this, 'p', value);

  @override
  Stream<RealmObjectChanges<ShopCt>> get changes =>
      RealmObjectBase.getChanges<ShopCt>(this);

  @override
  Stream<RealmObjectChanges<ShopCt>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopCt>(this, keyPaths);

  @override
  ShopCt freeze() => RealmObjectBase.freezeObject<ShopCt>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'i': i.toEJson(),
      'l': l.toEJson(),
      'n': n.toEJson(),
      'o': o.toEJson(),
      'p': p.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopCt value) => value.toEJson();
  static ShopCt _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'i': EJsonValue i,
        'l': EJsonValue l,
        'n': EJsonValue n,
        'o': EJsonValue o,
        'p': EJsonValue p,
      } =>
        ShopCt(
          id: fromEJson(id),
          i: fromEJson(i),
          l: fromEJson(l),
          n: fromEJson(n),
          o: fromEJson(o),
          p: fromEJson(p),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopCt._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopCt, 'shop_ct', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('i', RealmPropertyType.string, optional: true),
      SchemaProperty('l', RealmPropertyType.object,
          linkTarget: 'shop_ct_l', collectionType: RealmCollectionType.list),
      SchemaProperty('n', RealmPropertyType.string, optional: true),
      SchemaProperty('o', RealmPropertyType.double, optional: true),
      SchemaProperty('p', RealmPropertyType.objectid, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopCtLA extends _ShopCtLA
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopCtLA({
    ObjectId? id,
    String? n,
    double? p,
    int? v,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'n', n);
    RealmObjectBase.set(this, 'p', p);
    RealmObjectBase.set(this, 'v', v);
  }

  ShopCtLA._();

  @override
  ObjectId? get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set id(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  String? get n => RealmObjectBase.get<String>(this, 'n') as String?;
  @override
  set n(String? value) => RealmObjectBase.set(this, 'n', value);

  @override
  double? get p => RealmObjectBase.get<double>(this, 'p') as double?;
  @override
  set p(double? value) => RealmObjectBase.set(this, 'p', value);

  @override
  int? get v => RealmObjectBase.get<int>(this, 'v') as int?;
  @override
  set v(int? value) => RealmObjectBase.set(this, 'v', value);

  @override
  Stream<RealmObjectChanges<ShopCtLA>> get changes =>
      RealmObjectBase.getChanges<ShopCtLA>(this);

  @override
  Stream<RealmObjectChanges<ShopCtLA>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopCtLA>(this, keyPaths);

  @override
  ShopCtLA freeze() => RealmObjectBase.freezeObject<ShopCtLA>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'n': n.toEJson(),
      'p': p.toEJson(),
      'v': v.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopCtLA value) => value.toEJson();
  static ShopCtLA _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'n': EJsonValue n,
        'p': EJsonValue p,
        'v': EJsonValue v,
      } =>
        ShopCtLA(
          id: fromEJson(id),
          n: fromEJson(n),
          p: fromEJson(p),
          v: fromEJson(v),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopCtLA._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopCtLA, 'shop_ct_l_a', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('n', RealmPropertyType.string, optional: true),
      SchemaProperty('p', RealmPropertyType.double, optional: true),
      SchemaProperty('v', RealmPropertyType.int, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopLoc extends _ShopLoc
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopLoc({
    double? lat,
    double? lng,
  }) {
    RealmObjectBase.set(this, 'lat', lat);
    RealmObjectBase.set(this, 'lng', lng);
  }

  ShopLoc._();

  @override
  double? get lat => RealmObjectBase.get<double>(this, 'lat') as double?;
  @override
  set lat(double? value) => RealmObjectBase.set(this, 'lat', value);

  @override
  double? get lng => RealmObjectBase.get<double>(this, 'lng') as double?;
  @override
  set lng(double? value) => RealmObjectBase.set(this, 'lng', value);

  @override
  Stream<RealmObjectChanges<ShopLoc>> get changes =>
      RealmObjectBase.getChanges<ShopLoc>(this);

  @override
  Stream<RealmObjectChanges<ShopLoc>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopLoc>(this, keyPaths);

  @override
  ShopLoc freeze() => RealmObjectBase.freezeObject<ShopLoc>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'lat': lat.toEJson(),
      'lng': lng.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopLoc value) => value.toEJson();
  static ShopLoc _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'lat': EJsonValue lat,
        'lng': EJsonValue lng,
      } =>
        ShopLoc(
          lat: fromEJson(lat),
          lng: fromEJson(lng),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopLoc._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopLoc, 'shop_loc', [
      SchemaProperty('lat', RealmPropertyType.double, optional: true),
      SchemaProperty('lng', RealmPropertyType.double, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopCtL extends _ShopCtL
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopCtL({
    ObjectId? id,
    Iterable<ShopCtLA> a = const [],
    Iterable<ShopCtLBp> bp = const [],
    String? d,
    double? dc,
    String? i,
    double? mi,
    double? mx,
    int? mxq,
    String? n,
    bool? os,
    double? p,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set<RealmList<ShopCtLA>>(this, 'a', RealmList<ShopCtLA>(a));
    RealmObjectBase.set<RealmList<ShopCtLBp>>(
        this, 'bp', RealmList<ShopCtLBp>(bp));
    RealmObjectBase.set(this, 'd', d);
    RealmObjectBase.set(this, 'dc', dc);
    RealmObjectBase.set(this, 'i', i);
    RealmObjectBase.set(this, 'mi', mi);
    RealmObjectBase.set(this, 'mx', mx);
    RealmObjectBase.set(this, 'mxq', mxq);
    RealmObjectBase.set(this, 'n', n);
    RealmObjectBase.set(this, 'os', os);
    RealmObjectBase.set(this, 'p', p);
  }

  ShopCtL._();

  @override
  ObjectId? get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set id(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  RealmList<ShopCtLA> get a =>
      RealmObjectBase.get<ShopCtLA>(this, 'a') as RealmList<ShopCtLA>;
  @override
  set a(covariant RealmList<ShopCtLA> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<ShopCtLBp> get bp =>
      RealmObjectBase.get<ShopCtLBp>(this, 'bp') as RealmList<ShopCtLBp>;
  @override
  set bp(covariant RealmList<ShopCtLBp> value) =>
      throw RealmUnsupportedSetError();

  @override
  String? get d => RealmObjectBase.get<String>(this, 'd') as String?;
  @override
  set d(String? value) => RealmObjectBase.set(this, 'd', value);

  @override
  double? get dc => RealmObjectBase.get<double>(this, 'dc') as double?;
  @override
  set dc(double? value) => RealmObjectBase.set(this, 'dc', value);

  @override
  String? get i => RealmObjectBase.get<String>(this, 'i') as String?;
  @override
  set i(String? value) => RealmObjectBase.set(this, 'i', value);

  @override
  double? get mi => RealmObjectBase.get<double>(this, 'mi') as double?;
  @override
  set mi(double? value) => RealmObjectBase.set(this, 'mi', value);

  @override
  double? get mx => RealmObjectBase.get<double>(this, 'mx') as double?;
  @override
  set mx(double? value) => RealmObjectBase.set(this, 'mx', value);

  @override
  int? get mxq => RealmObjectBase.get<int>(this, 'mxq') as int?;
  @override
  set mxq(int? value) => RealmObjectBase.set(this, 'mxq', value);

  @override
  String? get n => RealmObjectBase.get<String>(this, 'n') as String?;
  @override
  set n(String? value) => RealmObjectBase.set(this, 'n', value);

  @override
  bool? get os => RealmObjectBase.get<bool>(this, 'os') as bool?;
  @override
  set os(bool? value) => RealmObjectBase.set(this, 'os', value);

  @override
  double? get p => RealmObjectBase.get<double>(this, 'p') as double?;
  @override
  set p(double? value) => RealmObjectBase.set(this, 'p', value);

  @override
  Stream<RealmObjectChanges<ShopCtL>> get changes =>
      RealmObjectBase.getChanges<ShopCtL>(this);

  @override
  Stream<RealmObjectChanges<ShopCtL>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopCtL>(this, keyPaths);

  @override
  ShopCtL freeze() => RealmObjectBase.freezeObject<ShopCtL>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'a': a.toEJson(),
      'bp': bp.toEJson(),
      'd': d.toEJson(),
      'dc': dc.toEJson(),
      'i': i.toEJson(),
      'mi': mi.toEJson(),
      'mx': mx.toEJson(),
      'mxq': mxq.toEJson(),
      'n': n.toEJson(),
      'os': os.toEJson(),
      'p': p.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopCtL value) => value.toEJson();
  static ShopCtL _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'a': EJsonValue a,
        'bp': EJsonValue bp,
        'd': EJsonValue d,
        'dc': EJsonValue dc,
        'i': EJsonValue i,
        'mi': EJsonValue mi,
        'mx': EJsonValue mx,
        'mxq': EJsonValue mxq,
        'n': EJsonValue n,
        'os': EJsonValue os,
        'p': EJsonValue p,
      } =>
        ShopCtL(
          id: fromEJson(id),
          a: fromEJson(a),
          bp: fromEJson(bp),
          d: fromEJson(d),
          dc: fromEJson(dc),
          i: fromEJson(i),
          mi: fromEJson(mi),
          mx: fromEJson(mx),
          mxq: fromEJson(mxq),
          n: fromEJson(n),
          os: fromEJson(os),
          p: fromEJson(p),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopCtL._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopCtL, 'shop_ct_l', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('a', RealmPropertyType.object,
          linkTarget: 'shop_ct_l_a', collectionType: RealmCollectionType.list),
      SchemaProperty('bp', RealmPropertyType.object,
          linkTarget: 'shop_ct_l_bp', collectionType: RealmCollectionType.list),
      SchemaProperty('d', RealmPropertyType.string, optional: true),
      SchemaProperty('dc', RealmPropertyType.double, optional: true),
      SchemaProperty('i', RealmPropertyType.string, optional: true),
      SchemaProperty('mi', RealmPropertyType.double, optional: true),
      SchemaProperty('mx', RealmPropertyType.double, optional: true),
      SchemaProperty('mxq', RealmPropertyType.int, optional: true),
      SchemaProperty('n', RealmPropertyType.string, optional: true),
      SchemaProperty('os', RealmPropertyType.bool, optional: true),
      SchemaProperty('p', RealmPropertyType.double, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopCtLBpSp extends _ShopCtLBpSp
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopCtLBpSp({
    ObjectId? id,
    String? n,
    double? p,
    int? v,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'n', n);
    RealmObjectBase.set(this, 'p', p);
    RealmObjectBase.set(this, 'v', v);
  }

  ShopCtLBpSp._();

  @override
  ObjectId? get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set id(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  String? get n => RealmObjectBase.get<String>(this, 'n') as String?;
  @override
  set n(String? value) => RealmObjectBase.set(this, 'n', value);

  @override
  double? get p => RealmObjectBase.get<double>(this, 'p') as double?;
  @override
  set p(double? value) => RealmObjectBase.set(this, 'p', value);

  @override
  int? get v => RealmObjectBase.get<int>(this, 'v') as int?;
  @override
  set v(int? value) => RealmObjectBase.set(this, 'v', value);

  @override
  Stream<RealmObjectChanges<ShopCtLBpSp>> get changes =>
      RealmObjectBase.getChanges<ShopCtLBpSp>(this);

  @override
  Stream<RealmObjectChanges<ShopCtLBpSp>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopCtLBpSp>(this, keyPaths);

  @override
  ShopCtLBpSp freeze() => RealmObjectBase.freezeObject<ShopCtLBpSp>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'n': n.toEJson(),
      'p': p.toEJson(),
      'v': v.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopCtLBpSp value) => value.toEJson();
  static ShopCtLBpSp _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'n': EJsonValue n,
        'p': EJsonValue p,
        'v': EJsonValue v,
      } =>
        ShopCtLBpSp(
          id: fromEJson(id),
          n: fromEJson(n),
          p: fromEJson(p),
          v: fromEJson(v),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopCtLBpSp._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.embeddedObject, ShopCtLBpSp, 'shop_ct_l_bp_sp', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('n', RealmPropertyType.string, optional: true),
      SchemaProperty('p', RealmPropertyType.double, optional: true),
      SchemaProperty('v', RealmPropertyType.int, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopCtLBp extends _ShopCtLBp
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopCtLBp({
    ObjectId? id,
    String? d,
    double? mn,
    double? mx,
    String? n,
    Iterable<ShopCtLBpSp> sp = const [],
    String? t,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'd', d);
    RealmObjectBase.set(this, 'mn', mn);
    RealmObjectBase.set(this, 'mx', mx);
    RealmObjectBase.set(this, 'n', n);
    RealmObjectBase.set<RealmList<ShopCtLBpSp>>(
        this, 'sp', RealmList<ShopCtLBpSp>(sp));
    RealmObjectBase.set(this, 't', t);
  }

  ShopCtLBp._();

  @override
  ObjectId? get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set id(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  String? get d => RealmObjectBase.get<String>(this, 'd') as String?;
  @override
  set d(String? value) => RealmObjectBase.set(this, 'd', value);

  @override
  double? get mn => RealmObjectBase.get<double>(this, 'mn') as double?;
  @override
  set mn(double? value) => RealmObjectBase.set(this, 'mn', value);

  @override
  double? get mx => RealmObjectBase.get<double>(this, 'mx') as double?;
  @override
  set mx(double? value) => RealmObjectBase.set(this, 'mx', value);

  @override
  String? get n => RealmObjectBase.get<String>(this, 'n') as String?;
  @override
  set n(String? value) => RealmObjectBase.set(this, 'n', value);

  @override
  RealmList<ShopCtLBpSp> get sp =>
      RealmObjectBase.get<ShopCtLBpSp>(this, 'sp') as RealmList<ShopCtLBpSp>;
  @override
  set sp(covariant RealmList<ShopCtLBpSp> value) =>
      throw RealmUnsupportedSetError();

  @override
  String? get t => RealmObjectBase.get<String>(this, 't') as String?;
  @override
  set t(String? value) => RealmObjectBase.set(this, 't', value);

  @override
  Stream<RealmObjectChanges<ShopCtLBp>> get changes =>
      RealmObjectBase.getChanges<ShopCtLBp>(this);

  @override
  Stream<RealmObjectChanges<ShopCtLBp>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopCtLBp>(this, keyPaths);

  @override
  ShopCtLBp freeze() => RealmObjectBase.freezeObject<ShopCtLBp>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'd': d.toEJson(),
      'mn': mn.toEJson(),
      'mx': mx.toEJson(),
      'n': n.toEJson(),
      'sp': sp.toEJson(),
      't': t.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopCtLBp value) => value.toEJson();
  static ShopCtLBp _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'd': EJsonValue d,
        'mn': EJsonValue mn,
        'mx': EJsonValue mx,
        'n': EJsonValue n,
        'sp': EJsonValue sp,
        't': EJsonValue t,
      } =>
        ShopCtLBp(
          id: fromEJson(id),
          d: fromEJson(d),
          mn: fromEJson(mn),
          mx: fromEJson(mx),
          n: fromEJson(n),
          sp: fromEJson(sp),
          t: fromEJson(t),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopCtLBp._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopCtLBp, 'shop_ct_l_bp', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('d', RealmPropertyType.string, optional: true),
      SchemaProperty('mn', RealmPropertyType.double, optional: true),
      SchemaProperty('mx', RealmPropertyType.double, optional: true),
      SchemaProperty('n', RealmPropertyType.string, optional: true),
      SchemaProperty('sp', RealmPropertyType.object,
          linkTarget: 'shop_ct_l_bp_sp',
          collectionType: RealmCollectionType.list),
      SchemaProperty('t', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopDlv extends _ShopDlv
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopDlv({
    ObjectId? id,
    String? cd,
    double? ta,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'cd', cd);
    RealmObjectBase.set(this, 'ta', ta);
  }

  ShopDlv._();

  @override
  ObjectId? get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId?;
  @override
  set id(ObjectId? value) => RealmObjectBase.set(this, '_id', value);

  @override
  String? get cd => RealmObjectBase.get<String>(this, 'cd') as String?;
  @override
  set cd(String? value) => RealmObjectBase.set(this, 'cd', value);

  @override
  double? get ta => RealmObjectBase.get<double>(this, 'ta') as double?;
  @override
  set ta(double? value) => RealmObjectBase.set(this, 'ta', value);

  @override
  Stream<RealmObjectChanges<ShopDlv>> get changes =>
      RealmObjectBase.getChanges<ShopDlv>(this);

  @override
  Stream<RealmObjectChanges<ShopDlv>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopDlv>(this, keyPaths);

  @override
  ShopDlv freeze() => RealmObjectBase.freezeObject<ShopDlv>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'cd': cd.toEJson(),
      'ta': ta.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopDlv value) => value.toEJson();
  static ShopDlv _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'cd': EJsonValue cd,
        'ta': EJsonValue ta,
      } =>
        ShopDlv(
          id: fromEJson(id),
          cd: fromEJson(cd),
          ta: fromEJson(ta),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopDlv._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopDlv, 'shop_dlv', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', optional: true),
      SchemaProperty('cd', RealmPropertyType.string, optional: true),
      SchemaProperty('ta', RealmPropertyType.double, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class ShopOfrG extends _ShopOfrG
    with RealmEntity, RealmObjectBase, EmbeddedObject {
  ShopOfrG({
    Iterable<ShopOfrGEls> els = const [],
    int? q,
  }) {
    RealmObjectBase.set<RealmList<ShopOfrGEls>>(
        this, 'els', RealmList<ShopOfrGEls>(els));
    RealmObjectBase.set(this, 'q', q);
  }

  ShopOfrG._();

  @override
  RealmList<ShopOfrGEls> get els =>
      RealmObjectBase.get<ShopOfrGEls>(this, 'els') as RealmList<ShopOfrGEls>;
  @override
  set els(covariant RealmList<ShopOfrGEls> value) =>
      throw RealmUnsupportedSetError();

  @override
  int? get q => RealmObjectBase.get<int>(this, 'q') as int?;
  @override
  set q(int? value) => RealmObjectBase.set(this, 'q', value);

  @override
  Stream<RealmObjectChanges<ShopOfrG>> get changes =>
      RealmObjectBase.getChanges<ShopOfrG>(this);

  @override
  Stream<RealmObjectChanges<ShopOfrG>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<ShopOfrG>(this, keyPaths);

  @override
  ShopOfrG freeze() => RealmObjectBase.freezeObject<ShopOfrG>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'els': els.toEJson(),
      'q': q.toEJson(),
    };
  }

  static EJsonValue _toEJson(ShopOfrG value) => value.toEJson();
  static ShopOfrG _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'els': EJsonValue els,
        'q': EJsonValue q,
      } =>
        ShopOfrG(
          els: fromEJson(els),
          q: fromEJson(q),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(ShopOfrG._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.embeddedObject, ShopOfrG, 'shop_ofr_g', [
      SchemaProperty('els', RealmPropertyType.object,
          linkTarget: 'shop_ofr_g_els',
          collectionType: RealmCollectionType.list),
      SchemaProperty('q', RealmPropertyType.int, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
