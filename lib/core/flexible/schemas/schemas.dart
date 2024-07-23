import 'package:catalog_sample/features/catalog/domain/entities/article_entity.dart';
import 'package:catalog_sample/features/catalog/domain/entities/catalog_entity.dart';
import 'package:catalog_sample/features/catalog/domain/entities/category_entity.dart';
import 'package:catalog_sample/features/catalog/domain/entities/description.dart';
import 'package:catalog_sample/features/catalog/domain/entities/section_entity.dart';
import 'package:catalog_sample/features/catalog/domain/entities/service_entity.dart';
import 'package:catalog_sample/features/catalog/domain/entities/shop_entity.dart';
import 'package:realm/realm.dart';

// catalog v3
part 'catalog_v3_models/catalog_v3.dart';
part 'catalog_v3_models/catalog_v3_se.dart';
part 'catalog_v3_models/catalog_v3_sc.dart';
part 'catalog_v3_models/catalog_v3_shops.dart';
part 'catalog_v3_models/catalog_v3_se_dn.dart';
part 'catalog_v3_models/catalog_v3_sc_dn.dart';
part 'catalog_v3_models/catalog_v3_sc_de.dart';
// shop
part 'shop_models/shop.dart';
part 'shop_models/shop_ofr.dart';
part 'shop_models/shop_ofr_b.dart';
part 'shop_models/shop_ofr_n.dart';
part 'shop_models/shop_ofr_g_els.dart';
part 'shop_models/shop_ct.dart';
part 'shop_models/shop_ct_l_a.dart';
part 'shop_models/shop_loc.dart';
part 'shop_models/shop_ct_l.dart';
part 'shop_models/shop_ct_l_bp_sp.dart';
part 'shop_models/shop_ct_l_bp.dart';
part 'shop_models/shop_dlv.dart';
part 'shop_models/shop_ofr_g.dart';

// generated schemas
part 'schemas.realm.dart';

final catalogV3Schemas = [
  CatalogV3.schema,
  CatalogV3Se.schema,
  CatalogV3Sc.schema,
  CatalogV3Shops.schema,
  CatalogV3SeDn.schema,
  CatalogV3ScDn.schema,
  CatalogV3ScDe.schema,
];

final shopSchemas = [
  ShopCtLA.schema,
  ShopCtLBpSp.schema,
  ShopCtLBp.schema,
  ShopCtL.schema,
  ShopCt.schema,
  ShopDlv.schema,
  ShopLoc.schema,
  ShopOfrB.schema,
  ShopOfrGEls.schema,
  ShopOfrG.schema,
  ShopOfrN.schema,
  ShopOfr.schema,
  ShopsOff.schema,
  Shop.schema,
];
