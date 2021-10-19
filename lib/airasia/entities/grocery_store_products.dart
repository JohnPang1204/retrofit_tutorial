class StoreProductsResponse {
  StoreProductsResponse({
     this.code,
     this.message,
     this.data,
  });
   int? code;
   String? message;
   List<StoreProduct>? data;

  StoreProductsResponse.fromJson(Map<String, dynamic> json){
    code = json['code'];
    message = json['message'];
    data = json['data'] !=null ? List.from(json['data']).map((e)=>StoreProduct.fromJson(e)).toList() : null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    _data['data'] = data?.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class StoreProduct {
  StoreProduct({
     this.uuid,
     this.name,
     this.slug,
     this.sequence,
     this.description,
    this.thumbnail,
     this.image,
     this.additionalTypeIds,
     this.sku,
     this.point,
     this.price,
     this.subPrice,
     this.tax,
     this.taxRate,
     this.categoryType,
     this.isCombo,
     this.isAutocook,
     this.isHalfAndHalf,
     this.isComboHalf,
     this.isMenuPointFreeDelivery,
     this.currencyUuid,
     this.discountPrice,
     this.discountPercentage,
     this.additionalDescription,
     this.quantity,
     this.minSubPrice,
     this.freeLowestProduct,
     this.deeplink,
  });
   String? uuid;
   String? name;
   String? slug;
   int? sequence;
   String? description;
   String? thumbnail;
   String? image;
   List<int>? additionalTypeIds;
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
   List<Tags>? tags;
   int? isMenuPointFreeDelivery;
   String? currencyUuid;
   Store? store;
  double? discountPrice;
   String? discountPercentage;
   String? additionalDescription;
   int? quantity;
  double? minSubPrice;
   int? freeLowestProduct;
   String? deeplink;

  StoreProduct.fromJson(Map<String, dynamic> json){
    uuid = json['uuid'];
    name = json['name'];
    slug = json['slug'];
    sequence = json['sequence'];
    description = json['description'];
    image = json['image'];
    sku = json['sku'];
    point = json['point'];
    price =  (json['price'] as num?)?.toDouble();
    subPrice =  (json['sub_price'] as num?)?.toDouble();
    tax = json['tax'];
    taxRate = json['tax_rate'];
    category = Category.fromJson(json['category']);
    parentCategory = ParentCategory.fromJson(json['parent_category']);
    categoryType = json['category_type'];
    isCombo = json['is_combo'];
    typeIds = List.castFrom<dynamic, int>(json['type_ids']);
    optionGroups = List.from(json['option_groups']).map((e)=>OptionGroups.fromJson(e)).toList();
    isAutocook = json['is_autocook'];
    isHalfAndHalf = json['is_half_and_half'];
    isComboHalf = json['is_combo_half'];
    tags = List.from(json['tags']).map((e)=>Tags.fromJson(e)).toList();
    isMenuPointFreeDelivery = json['is_menu_point_free_delivery'];
    currencyUuid = json['currency_uuid'];
    store = Store.fromJson(json['store']);
    discountPrice =  (json['discount_price'] as num?)?.toDouble();
    discountPercentage = json['discount_percentage'];
    additionalDescription = json['additional_description'];
    quantity = json['quantity'];
    minSubPrice =  (json['min_sub_price'] as num?)?.toDouble();
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
    _data['thumbnail'] = thumbnail;
    _data['image'] = image;
    _data['additional_type_ids'] = additionalTypeIds;
    _data['sku'] = sku;
    _data['point'] = point;
    _data['price'] = price;
    _data['sub_price'] = subPrice;
    _data['tax'] = tax;
    _data['tax_rate'] = taxRate;
    _data['category_type'] = categoryType;
    _data['is_combo'] = isCombo;
    _data['type_ids'] = typeIds;
    _data['is_autocook'] = isAutocook;
    _data['is_half_and_half'] = isHalfAndHalf;
    _data['is_combo_half'] = isComboHalf;
    _data['is_menu_point_free_delivery'] = isMenuPointFreeDelivery;
    _data['currency_uuid'] = currencyUuid;
    _data['discount_price'] = discountPrice;
    _data['discount_percentage'] = discountPercentage;
    _data['additional_description'] = additionalDescription;
    _data['quantity'] = quantity;
    _data['min_sub_price'] = minSubPrice;
    _data['free_lowest_product'] = freeLowestProduct;
    _data['deeplink'] = deeplink;
    return _data;
  }
}

class Category {
  Category({
     this.uuid,
     this.name,
  });
   String? uuid;
   String? name;

  Category.fromJson(Map<String, dynamic> json){
    uuid = json['uuid'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
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

  ParentCategory.fromJson(Map<String, dynamic> json){
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

  OptionGroups.fromJson(Map<String, dynamic> json){
    uuid = json['uuid'];
    sku = json['sku'];
    name = json['name'];
    sequence = json['sequence'];
    shortName = json['short_name'];
    thumbnail = json['thumbnail'];
    price =  (json['price'] as num?)?.toDouble();
    subPrice =  (json['sub_price'] as num?)?.toDouble();
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


class Tags {
  Tags({
     this.uuid,
     this.name,
     this.image,
     this.description,
  });
   String? uuid;
   String? name;
   String? image;
   String? description;

  Tags.fromJson(Map<String, dynamic> json){
    uuid = json['uuid'];
    name = json['name'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['name'] = name;
    _data['image'] = image;
    _data['description'] = description;
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

  Store.fromJson(Map<String, dynamic> json){
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