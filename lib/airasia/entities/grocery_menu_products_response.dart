class GroceryMenuProductsResponse {
  GroceryMenuProductsResponse({
    this.code,
    this.message,
    this.data,
  });

  int? code;
  String? message;
  List<GroceryMenuProducts>? data;

  GroceryMenuProductsResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] == null
        ? null
        : List.from(json['data'])
            .map((e) => GroceryMenuProducts.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    _data['data'] = data?.map((e) => e.toJson()).toList();
    return _data;
  }
}

class GroceryMenuProducts {
  GroceryMenuProducts({
    this.uuid,
    this.name,
    this.lang,
    this.slug,
    this.sequence,
    this.description,
    this.thumbnail,
    this.image,
    this.fullName,
    this.additionalTypeIds,
    this.allowedAdditionalTypeIds,
    this.sku,
    this.point,
    this.price,
    this.subPrice,
    this.tax,
    this.taxRate,
    this.category,
    this.parentCategory,
    this.categoryType,
    this.isCombo,
    this.typeIds,
    this.optionGroups,
    this.isAutocook,
    this.isHalfAndHalf,
    this.isComboHalf,
    this.toppings,
    this.isMenuPointFreeDelivery,
    this.currencyUuid,
    this.store,
    this.discountPrice,
    this.discountPercentage,
    this.additionalDescription,
    this.quantity,
    this.minSubPrice,
    this.freeLowestProduct,
    this.storeCategoryUuids,
    this.brandUuids,
    this.deeplink,
  });

  String? uuid;
  String? name;
  String? lang;
  String? slug;
  int? sequence;
  String? description;
  String? thumbnail;
  String? image;
  String? fullName;
  List<int>? additionalTypeIds;
  List<dynamic>? allowedAdditionalTypeIds;
  String? sku;
  int? point;
  double? price;
  double? subPrice;
  int? tax;
  int? taxRate;
  Category? category;
  ParentCategory? parentCategory;
  String? categoryType;
  int? isCombo;
  List<int>? typeIds;
  List<OptionGroups>? optionGroups;
  int? isAutocook;
  int? isHalfAndHalf;
  int? isComboHalf;
  Toppings? toppings;
  int? isMenuPointFreeDelivery;
  String? currencyUuid;
  Store? store;
  double? discountPrice;
  String? discountPercentage;
  String? additionalDescription;
  int? quantity;
  double? minSubPrice;
  int? freeLowestProduct;
  List<String>? storeCategoryUuids;
  List<String>? brandUuids;
  String? deeplink;

  GroceryMenuProducts.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    lang = json['lang'];
    slug = json['slug'];
    sequence = json['sequence'];
    description = json['description'];
    thumbnail = json['thumbnail'];
    image = json['image'];
    fullName = json['full_name'];
    additionalTypeIds =
        List.castFrom<dynamic, int>(json['additional_type_ids']);
    allowedAdditionalTypeIds =
        List.castFrom<dynamic, dynamic>(json['allowed_additional_type_ids']);
    sku = json['sku'];
    point = json['point'];
    price =  (json['price'] as num?)?.toDouble();
    subPrice = (json['sub_price'] as num?)?.toDouble();
    tax = json['tax'];
    taxRate = json['tax_rate'];
    category =
        json['category'] == null ? null : Category.fromJson(json['category']);
    parentCategory = json['parent_category'] == null
        ? null
        : ParentCategory.fromJson(json['parent_category']);
    categoryType = json['category_type'];
    isCombo = json['is_combo'];
    typeIds = List.castFrom<dynamic, int>(json['type_ids']);
    optionGroups = json['option_groups'] == null
        ? null
        : List.from(json['option_groups'])
            .map((e) => OptionGroups.fromJson(e))
            .toList();
    isAutocook = json['is_autocook'];
    isHalfAndHalf = json['is_half_and_half'];
    isComboHalf = json['is_combo_half'];
    toppings =
        json['toppings'] == null ? null : Toppings.fromJson(json['toppings']);
    isMenuPointFreeDelivery = json['is_menu_point_free_delivery'];
    currencyUuid = json['currency_uuid'];
    store = json['store'] == null ? null : Store.fromJson(json['store']);
    discountPrice =  (json['discount_price'] as num?)?.toDouble();
    discountPercentage = json['discount_percentage'];
    additionalDescription = json['additional_description'];
    quantity = json['quantity'];
    minSubPrice = (json['min_sub_price'] as num?)?.toDouble();
    freeLowestProduct = json['free_lowest_product'];
    storeCategoryUuids = (json['store_category_uuids'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();
    brandUuids = (json['brand_uuids'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();

    deeplink = json['deeplink'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['name'] = name;
    _data['lang'] = lang;
    _data['slug'] = slug;
    _data['sequence'] = sequence;
    _data['description'] = description;
    _data['thumbnail'] = thumbnail;
    _data['image'] = image;
    _data['full_name'] = fullName;
    _data['additional_type_ids'] = additionalTypeIds;
    _data['allowed_additional_type_ids'] = allowedAdditionalTypeIds;
    _data['sku'] = sku;
    _data['point'] = point;
    _data['price'] = price;
    _data['sub_price'] = subPrice;
    _data['tax'] = tax;
    _data['tax_rate'] = taxRate;
    _data['category'] = category?.toJson();
    _data['parent_category'] = parentCategory?.toJson();
    _data['category_type'] = categoryType;
    _data['is_combo'] = isCombo;
    _data['type_ids'] = typeIds;
    _data['option_groups'] = optionGroups;
    _data['is_autocook'] = isAutocook;
    _data['is_half_and_half'] = isHalfAndHalf;
    _data['is_combo_half'] = isComboHalf;
    _data['toppings'] = toppings?.toJson();
    _data['is_menu_point_free_delivery'] = isMenuPointFreeDelivery;
    _data['currency_uuid'] = currencyUuid;
    _data['store'] = store;
    _data['discount_price'] = discountPrice;
    _data['discount_percentage'] = discountPercentage;
    _data['additional_description'] = additionalDescription;
    _data['quantity'] = quantity;
    _data['min_sub_price'] = minSubPrice;
    _data['free_lowest_product'] = freeLowestProduct;
    _data['store_category_uuids'] = storeCategoryUuids;
    _data['brand_uuids'] = brandUuids;
    _data['deeplink'] = deeplink;
    return _data;
  }
}

class Category {
  Category({
    this.uuid,
    this.slug,
    this.name,
  });

  String? uuid;
  String? slug;
  String? name;

  Category.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    slug = json['slug'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['slug'] = slug;
    _data['name'] = name;
    return _data;
  }
}

class ParentCategory {
  ParentCategory({
    this.uuid,
    this.slug,
    this.name,
  });

  String? uuid;
  String? slug;
  String? name;

  ParentCategory.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    slug = json['slug'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['slug'] = slug;
    _data['name'] = name;
    return _data;
  }
}

class OptionGroups {
  OptionGroups({
    this.uuid,
    this.sku,
    this.name,
    this.sequence,
    this.shortName,
    this.thumbnail,
    this.price,
    this.subPrice,
    this.tax,
    this.taxRate,
    this.description,
    this.options,
    this.quantity,
  });

  String? uuid;
  String? sku;
  String? name;
  int? sequence;
  String? shortName;
  String? thumbnail;
  int? price;
  int? subPrice;
  int? tax;
  int? taxRate;
  String? description;
  String? options;
  int? quantity;

  OptionGroups.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    sku = json['sku'];
    name = json['name'];
    sequence = json['sequence'];
    shortName = json['short_name'];
    thumbnail = json['thumbnail'];
    price = json['price'];
    subPrice = json['sub_price'];
    tax = json['tax'];
    taxRate = json['tax_rate'];
    description = json['description'];
    options = json['options'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['sku'] = sku;
    _data['name'] = name;
    _data['sequence'] = sequence;
    _data['short_name'] = shortName;
    _data['thumbnail'] = thumbnail;
    _data['price'] = price;
    _data['sub_price'] = subPrice;
    _data['tax'] = tax;
    _data['tax_rate'] = taxRate;
    _data['description'] = description;
    _data['options'] = options;
    _data['quantity'] = quantity;
    return _data;
  }
}

class Toppings {
  Toppings({
    this.additionalToppings,
    this.defaultToppings,
  });

  List<String>? additionalToppings;
  List<String>? defaultToppings;

  Toppings.fromJson(Map<String, dynamic> json) {
    additionalToppings = (json['additional_toppings'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();

    defaultToppings = (json['default_toppings'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['additional_toppings'] = additionalToppings;
    _data['default_toppings'] = defaultToppings;
    return _data;
  }
}


class Store {
  Store({
    this.uuid,
    this.name,
    this.slug,
  });

  String? uuid;
  String? name;
  String? slug;

  Store.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['name'] = name;
    _data['slug'] = slug;
    return _data;
  }
}
