class GroceryTagResponse {
  GroceryTagResponse({
    this.code,
    this.message,
    this.data,
  });

  int? code;
  String? message;
  List<GroceryTag>? data;

  GroceryTagResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] == null
        ? null
        : List.from(json['data']).map((e) => GroceryTag.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    _data['data'] = data?.map((e) => e.toJson()).toList();
    return _data;
  }
}

class GroceryTag {
  GroceryTag({
    this.uuid,
    this.name,
    this.slug,
    this.clientUuid,
    this.type,
    this.isActive,
    this.image,
    this.children,
  });

  String? uuid;
  String? name;
  String? slug;
  String? clientUuid;
  int? type;
  int? isActive;
  String? image;
  List<GroceryTagChildren>? children;

  GroceryTag.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    slug = json['slug'];
    clientUuid = json['client_uuid'];
    type = json['type'];
    isActive = json['is_active'];
    image = json['image'];
    children = json['children'] == null
        ? null
        : List.from(json['children'])
            .map((e) => GroceryTagChildren.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['client_uuid'] = clientUuid;
    _data['type'] = type;
    _data['is_active'] = isActive;
    _data['image'] = image;
    _data['children'] = children?.map((e) => e.toJson()).toList();
    return _data;
  }
}

class GroceryTagChildren {
  GroceryTagChildren({
    this.uuid,
    this.parentUuid,
    this.name,
    this.slug,
    this.sequence,
    this.description,
    this.mainDescription,
    this.thumbnail,
    this.image,
    this.icon,
    this.clientUuid,
    this.storeTypeId,
    this.categoryType,
    this.isActive,
    this.isShowWebsite,
    this.children,
    this.breadcrumbs,
  });

  String? uuid;
  String? parentUuid;
  String? name;
  String? slug;
  int? sequence;
  String? description;
  String? mainDescription;
  String? thumbnail;
  String? image;
  String? icon;
  String? clientUuid;
  int? storeTypeId;
  int? categoryType;
  int? isActive;
  int? isShowWebsite;
  List<GroceryTagChildren>? children;
  String? breadcrumbs;

  GroceryTagChildren.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    parentUuid = json['parent_uuid'];
    name = json['name'];
    slug = json['slug'];
    sequence = json['sequence'];
    description = json['description'];
    mainDescription = json['main_description'];
    thumbnail = json['thumbnail'];
    image = json['image'];
    icon = json['icon'];
    clientUuid = json['client_uuid'];
    storeTypeId = json['store_type_id'];
    categoryType = json['category_type'];
    isActive = json['is_active'];
    isShowWebsite = json['is_show_website'];
    children = json['children'] == null
        ? null
        : List.from(json['children'])
            .map((e) => GroceryTagChildren.fromJson(e))
            .toList();
    breadcrumbs = json['breadcrumbs'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['parent_uuid'] = parentUuid;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['sequence'] = sequence;
    _data['description'] = description;
    _data['main_description'] = mainDescription;
    _data['thumbnail'] = thumbnail;
    _data['image'] = image;
    _data['icon'] = icon;
    _data['client_uuid'] = clientUuid;
    _data['store_type_id'] = storeTypeId;
    _data['category_type'] = categoryType;
    _data['is_active'] = isActive;
    _data['is_show_website'] = isShowWebsite;
    _data['children'] = children;
    _data['breadcrumbs'] = breadcrumbs;
    return _data;
  }
}
