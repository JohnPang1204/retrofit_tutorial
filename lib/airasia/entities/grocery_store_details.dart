class StoreDetailsResponse {
  StoreDetailsResponse({
    this.code,
    this.message,
    this.data,
  });

  int? code;
  String? message;
  StoreDetails? data;

  StoreDetailsResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = StoreDetails.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['message'] = message;
    _data['data'] = data?.toJson();
    return _data;
  }
}

class StoreDetails {
  StoreDetails({
    this.uuid,
    this.clientUuid,
    this.tierId,
    this.tradeZoneUuid,
    this.code,
    this.name,
    this.available,
    this.location,
    this.fullAddress,
    this.distance,
    this.timezone,
    this.disposition,
    this.aggregatorCode,
    this.openedAt,
    this.closedAt,
    this.acceptOnlineOrder,
    this.alcoholDrinksAvailable,
    this.description,
    this.phone,
    this.whatsappNumber,
    this.deliveryFee,
    this.storeTypeId,
    this.avatar,
    this.drawerChange,
    this.advanceOnly,
    this.distanceCusAndStore,
    this.marketingDescription,
    this.fallbackBanner,
    this.slug,
    this.distanceByGoogle,
    this.isSelfPickup,
    this.selfPickupTime,
    this.addressLevel_0,
    this.addressLevel_1,
    this.addressLevel_2,
    this.addressLevel_3,
    this.addressLevel_4,
    this.addressLevel_5,
    this.addressLevel_6,
    this.addressLevel_7,
    this.addressLevel_8,
    this.addressLevel_9,
    this.postalCode,
    this.shiftDurationTime,
    this.shiftPopupBefore,
  });

  String? uuid;
  String? clientUuid;
  int? tierId;
  String? tradeZoneUuid;
  String? code;
  String? name;
  int? available;
  double? lat;
  double? long;
  String? location;
  String? fullAddress;
  int? distance;
  String? timezone;
  List<int>? disposition;
  MinCart? minCart;
  WaitingTime? waitingTime;
  Duration? duration;
  String? aggregatorCode;
  String? openedAt;
  String? closedAt;
  int? acceptOnlineOrder;
  int? alcoholDrinksAvailable;
  String? description;
  String? phone;
  String? whatsappNumber;
  int? deliveryFee;
  int? storeTypeId;
  String? avatar;
  int? drawerChange;
  int? advanceOnly;
  int? distanceCusAndStore;
  String? marketingDescription;
  int? fallbackBanner;
  String? slug;
  int? distanceByGoogle;
  int? isSelfPickup;
  int? selfPickupTime;
  String? addressLevel_0;
  String? addressLevel_1;
  String? addressLevel_2;
  String? addressLevel_3;
  String? addressLevel_4;
  String? addressLevel_5;
  String? addressLevel_6;
  String? addressLevel_7;
  String? addressLevel_8;
  String? addressLevel_9;
  String? postalCode;
  int? shiftDurationTime;
  int? shiftPopupBefore;

  StoreDetails.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    clientUuid = json['client_uuid'];
    tierId = json['tier_id'];
    tradeZoneUuid = json['trade_zone_uuid'];
    code = json['code'];
    name = json['name'];
    available = json['available'];
    lat = json['lat'];
    long = json['long'];
    location = json['location'];
    fullAddress = json['full_address'];
    distance = json['distance'];
    timezone = json['timezone'];
    disposition = List.castFrom<dynamic, int>(json['disposition']);
    minCart = MinCart.fromJson(json['min_cart']);
    waitingTime = WaitingTime.fromJson(json['waiting_time']);
    duration = Duration.fromJson(json['duration']);
    aggregatorCode = json['aggregator_code'];
    openedAt = json['opened_at'];
    closedAt = json['closed_at'];
    acceptOnlineOrder = json['accept_online_order'];
    alcoholDrinksAvailable = json['alcohol_drinks_available'];
    description = json['description'];
    phone = json['phone'];
    whatsappNumber = json['whatsapp_number'];
    deliveryFee = json['delivery_fee'];
    storeTypeId = json['store_type_id'];
    avatar = json['avatar'];
    drawerChange = json['drawer_change'];
    advanceOnly = json['advance_only'];
    distanceCusAndStore = json['distance_cus_and_store'];
    marketingDescription = json['marketing_description'];
    fallbackBanner = json['fallback_banner'];
    slug = json['slug'];
    distanceByGoogle = json['distance_by_google'];
    isSelfPickup = json['is_self_pickup'];
    selfPickupTime = json['self_pickup_time'];
    addressLevel_0 = json['address_level_0'];
    addressLevel_1 = json['address_level_1'];
    addressLevel_2 = json['address_level_2'];
    addressLevel_3 = json['address_level_3'];
    addressLevel_4 = json['address_level_4'];
    addressLevel_5 = json['address_level_5'];
    addressLevel_6 = json['address_level_6'];
    addressLevel_7 = json['address_level_7'];
    addressLevel_8 = json['address_level_8'];
    addressLevel_9 = json['address_level_9'];
    postalCode = json['postal_code'];
    shiftDurationTime = json['shift_duration_time'];
    shiftPopupBefore = json['shift_popup_before'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['uuid'] = uuid;
    _data['client_uuid'] = clientUuid;
    _data['tier_id'] = tierId;
    _data['trade_zone_uuid'] = tradeZoneUuid;
    _data['code'] = code;
    _data['name'] = name;
    _data['available'] = available;
    _data['lat'] = lat;
    _data['long'] = long;
    _data['location'] = location;
    _data['full_address'] = fullAddress;
    _data['distance'] = distance;
    _data['timezone'] = timezone;
    _data['disposition'] = disposition;
    _data['aggregator_code'] = aggregatorCode;
    _data['opened_at'] = openedAt;
    _data['closed_at'] = closedAt;
    _data['accept_online_order'] = acceptOnlineOrder;
    _data['alcohol_drinks_available'] = alcoholDrinksAvailable;
    _data['description'] = description;
    _data['phone'] = phone;
    _data['whatsapp_number'] = whatsappNumber;
    _data['delivery_fee'] = deliveryFee;
    _data['store_type_id'] = storeTypeId;
    _data['avatar'] = avatar;
    _data['drawer_change'] = drawerChange;
    _data['advance_only'] = advanceOnly;
    _data['distance_cus_and_store'] = distanceCusAndStore;
    _data['marketing_description'] = marketingDescription;
    _data['fallback_banner'] = fallbackBanner;
    _data['slug'] = slug;
    _data['distance_by_google'] = distanceByGoogle;
    _data['is_self_pickup'] = isSelfPickup;
    _data['self_pickup_time'] = selfPickupTime;
    _data['address_level_0'] = addressLevel_0;
    _data['address_level_1'] = addressLevel_1;
    _data['address_level_2'] = addressLevel_2;
    _data['address_level_3'] = addressLevel_3;
    _data['address_level_4'] = addressLevel_4;
    _data['address_level_5'] = addressLevel_5;
    _data['address_level_6'] = addressLevel_6;
    _data['address_level_7'] = addressLevel_7;
    _data['address_level_8'] = addressLevel_8;
    _data['address_level_9'] = addressLevel_9;
    _data['postal_code'] = postalCode;
    _data['shift_duration_time'] = shiftDurationTime;
    _data['shift_popup_before'] = shiftPopupBefore;
    return _data;
  }
}

class MinCart {
  MinCart();

  MinCart.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class WaitingTime {
  WaitingTime();

  WaitingTime.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}

class Duration {
  Duration();

  Duration.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}
