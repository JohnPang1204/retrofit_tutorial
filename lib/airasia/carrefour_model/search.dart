import 'product.dart';

class Search {
  List<Facets>? facets;
  String? freeTextSearch;
  String? keywordRedirectUrl;
  Pagination? pagination;
  List<GroceryProduct>? products;
  List<Sorts>? sorts;
  int? statusCode;
  int? totalProducts;
  String? type;

  Search({
    this.facets,
    this.freeTextSearch,
    this.keywordRedirectUrl,
    this.pagination,
    this.products,
    this.sorts,
    this.statusCode,
    this.totalProducts,
    this.type,
  });
}

class Facets {
  bool? category;
  String? code;
  bool? multiSelect;
  String? name;
  String? originalMax;
  String? originalMin;
  int? priority;
  List<FacetValues>? topValues;
  int? totalItems;
  List<FacetValues>? values;
  bool? isSwitch;
  bool? visible;
  int? order;

  Facets(
      {this.category,
      this.code,
      this.multiSelect,
      this.name,
      this.originalMax,
      this.originalMin,
      this.priority,
      this.topValues,
      this.totalItems,
      this.values,
      this.isSwitch,
      this.visible,
      this.order});

  Facets.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    code = json['code'];
    multiSelect = json['multiSelect'];
    name = json['name'];
    originalMax = json['originalMax'];
    originalMin = json['originalMin'];
    priority = json['priority'];
    if (json['topValues'] != null) {
      topValues = <FacetValues>[];
      json['topValues'].forEach((v) {
        values!.add(FacetValues.fromJson(v));
      });
    }
    totalItems = json['totalItems'];
    if (json['values'] != null) {
      values = <FacetValues>[];
      json['values'].forEach((v) {
        values!.add(FacetValues.fromJson(v));
      });
    }
    isSwitch = json['isSwitch'];
    visible = json['visible'];
    order = json['order'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['category'] = category;
    data['code'] = code;
    data['multiSelect'] = multiSelect;
    data['name'] = name;
    data['originalMax'] = originalMax;
    data['originalMin'] = originalMin;
    if (topValues != null) {
      data['topValues'] = topValues!.map((v) => v.toJson()).toList();
    }
    data['totalItems'] = totalItems;
    if (values != null) {
      data['values'] = values!.map((v) => v.toJson()).toList();
    }
    data['isSwitch'] = isSwitch;
    data['visible'] = visible;
    data['order'] = order;

    return data;
  }
}

class FacetValues {
  String? code;
  int? count;
  String? name;
  FacetQuery? query;
  bool? selected;

  FacetValues({this.code, this.count, this.name, this.query, this.selected});

  FacetValues.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    count = json['count'];
    code = json['code'];
    selected = json['selected'];
    query = json['query'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['count'] = count;
    data['code'] = code;
    data['selected'] = selected;
    data['query'] = query;
    return data;
  }
}

class FacetQuery {
  FacetQuery? query;
  String? url;
  String? value;

  FacetQuery({this.query, this.url, this.value});
}

class Pagination {
  int? currentPage;
  int? pageSize;
  String? sort;
  int? totalPages;
  int? totalResults;

  Pagination({
    this.currentPage,
    this.pageSize,
    this.sort,
    this.totalPages,
    this.totalResults,
  });
}

class Sorts {
  String? code;
  String? name;
  bool? selected;

  Sorts({this.code, this.name, this.selected});
}
