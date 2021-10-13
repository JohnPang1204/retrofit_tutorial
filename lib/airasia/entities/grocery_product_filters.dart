class GroceryProductFiltersResponse {
  GroceryProductFiltersResponse({
    this.code,
    this.message,
    this.data,
  });

  int? code;
  String? message;
  List<ProductFiltersData>? data;

  GroceryProductFiltersResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null
        ? List.from(json['data'])
            .map((e) => ProductFiltersData.fromJson(e))
            .toList()
        : null;
  }

  Map<String?, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    _data['data'] = data?.map((e) => e.toJson()).toList();
    return _data;
  }
}

class ProductFiltersData {
  ProductFiltersData({
    this.type,
    this.name,
    this.slug,
    this.uuid,
    this.data,
  });

  String? type;
  String? name;
  String? slug;
  String? uuid;
  List<ProductFiltersData>? data;

  ProductFiltersData.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
    slug = json['slug'];
    uuid = json['uuid'];
    data = json['data'] != null
        ? List.from(json['data'])
            .map((e) => ProductFiltersData.fromJson(e))
            .toList()
        : null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['uuid'] = uuid;
    _data['data'] = data?.map((e) => e.toJson()).toList();
    return _data;
  }
}
