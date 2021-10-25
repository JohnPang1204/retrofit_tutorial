class ProductDetailsResponse {
  ProductDetailsResponse({
    this.code,
    this.message,
    this.data,
  });

  int? code;
  String? message;
  ProductDetails? data;

  ProductDetailsResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = ProductDetails.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    _data['data'] = data?.toJson();
    return _data;
  }
}

class ProductDetails {
  ProductDetails({
    this.uuid,
    this.name,
    this.slug,
    this.sequence,
    this.description,
    this.mainDescription,
    this.thumbnail,
    this.image,
    this.gallery,
    this.sku,
    this.additionalTypeIds,
    this.point,
    this.price,
    this.discountPrice,
    this.discountPercentage,
    this.subPrice,
    this.tax,
    this.taxRate,
    this.categoryMultilevels,
    this.categoryType,
    this.typeIds,
    this.optionGroups,
    this.isAutocook,
    this.isHalfAndHalf,
    this.isComboHalf,
    this.isMenuPointFreeDelivery,
    this.storeUuids,
    this.subTitle,
    this.currencyUuid,
    this.originName,
    this.quantity,
    this.freeLowestProduct,
    this.deeplink,
  });

  String? uuid;
  String? name;
  String? slug;
  int? sequence;
  String? description;
  String? mainDescription;
  String? thumbnail;
  String? image;
  List<Gallery>? gallery;
  String? sku;
  List<int>? additionalTypeIds;
  int? point;
  double? price;
  double? discountPrice;
  String? discountPercentage;
  double? subPrice;
  int? tax;
  int? taxRate;
  Category? category;
  List<CategoryMultilevels>? categoryMultilevels;
  String? categoryType;
  List<int>? typeIds;
  List<ProductOptionGroups>? optionGroups;
  int? isAutocook;
  int? isHalfAndHalf;
  int? isComboHalf;
  int? isMenuPointFreeDelivery;
  List<String>? storeUuids;
  String? subTitle;
  String? currencyUuid;
  String? originName;
  int? quantity;
  int? freeLowestProduct;
  String? deeplink;

  ProductDetails.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    slug = json['slug'];
    sequence = json['sequence'];
    description = json['description'];
    mainDescription = json['main_description'];
    thumbnail = json['thumbnail'];
    image = json['image'];
    gallery =
        List.from(json['gallery']).map((e) => Gallery.fromJson(e)).toList();
    sku = json['sku'];
    additionalTypeIds =
        List.castFrom<dynamic, int>(json['additional_type_ids']);
    price = (json['price'] as num?)?.toDouble();
    discountPrice = (json['discount_price'] as num?)?.toDouble();
    discountPercentage = json['discount_percentage'];
    subPrice = (json['subPrice'] as num?)?.toDouble();
    tax = json['tax'];
    taxRate = json['tax_rate'];
    category = Category.fromJson(json['category']);
    categoryMultilevels = List.from(json['category_multilevels'])
        .map((e) => CategoryMultilevels.fromJson(e))
        .toList();
    categoryType = json['category_type'];
    typeIds = List.castFrom<dynamic, int>(json['type_ids']);
    optionGroups = List.from(json['option_groups'])
        .map((e) => ProductOptionGroups.fromJson(e))
        .toList();
    isAutocook = json['is_autocook'];
    isHalfAndHalf = json['is_half_and_half'];
    isComboHalf = json['is_combo_half'];
    isMenuPointFreeDelivery = json['is_menu_point_free_delivery'];
    storeUuids = List.castFrom<dynamic, String>(json['store_uuids']);
    subTitle = json['sub_title'];
    currencyUuid = json['currency_uuid'];
    originName = json['origin_name'];
    quantity = json['quantity'];
    freeLowestProduct = json['free_lowest_product'];
    deeplink = json['deeplink'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['sequence'] = sequence;
    _data['description'] = description;
    _data['main_description'] = mainDescription;
    _data['thumbnail'] = thumbnail;
    _data['image'] = image;
    _data['gallery'] = gallery?.map((e) => e.toJson()).toList();
    _data['sku'] = sku;
    _data['additional_type_ids'] = additionalTypeIds;
    _data['point'] = point;
    _data['price'] = price;
    _data['discount_price'] = discountPrice;
    _data['discount_percentage'] = discountPercentage;
    _data['sub_price'] = subPrice;
    _data['tax'] = tax;
    _data['tax_rate'] = taxRate;
    _data['category'] = category?.toJson();
    _data['category_type'] = categoryType;
    _data['type_ids'] = typeIds;
    _data['is_autocook'] = isAutocook;
    _data['is_half_and_half'] = isHalfAndHalf;
    _data['is_combo_half'] = isComboHalf;
    _data['is_menu_point_free_delivery'] = isMenuPointFreeDelivery;
    _data['store_uuids'] = storeUuids;
    _data['sub_title'] = subTitle;
    _data['currency_uuid'] = currencyUuid;
    _data['origin_name'] = originName;
    _data['quantity'] = quantity;
    _data['free_lowest_product'] = freeLowestProduct;
    _data['deeplink'] = deeplink;
    return _data;
  }
}

class Gallery {
  Gallery({
    this.name,
    this.url,
  });

  String? name;
  String? url;

  Gallery.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['url'] = url;
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

class CategoryMultilevels {
  CategoryMultilevels({
    this.uuid,
    this.slug,
    this.name,
  });

  String? uuid;
  String? slug;
  String? name;

  CategoryMultilevels.fromJson(Map<String, dynamic> json) {
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

class ProductOptionGroups {
  ProductOptionGroups({
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
    this.quantity,
  });

  String? uuid;
  String? sku;
  String? name;
  int? sequence;
  String? shortName;
  String? thumbnail;
  double? price;
  double? subPrice;
  int? tax;
  int? taxRate;
  String? description;
  int? quantity;

  ProductOptionGroups.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    sku = json['sku'];
    name = json['name'];
    sequence = json['sequence'];
    shortName = json['short_name'];
    thumbnail = json['thumbnail'];
    price = (json['price'] as num?)?.toDouble();
    subPrice = (json['sub_price'] as num?)?.toDouble();
    tax = json['tax'];
    taxRate = json['tax_rate'];
    description = json['description'];
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
    _data['quantity'] = quantity;
    return _data;
  }
}
