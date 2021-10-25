/// Single product information
class GroceryProduct {
  bool? availableForPickup;
  double? averageRating;
  double? averageWeightByKg;
  String? brandName;
  bool? cashbackStickerVisible;
  List<GroceryCategories>? categories;
  String? clickUrl;
  String? code;
  String? countryOrigin;
  String? deliveryTimeDescription;
  String? description;
  bool? eligibleForGiftWrapping;
  bool? freeDelivery;
  double? freeDeliveryThreshold;
  bool? freeInstallation;
  bool? genuineStock;
  List<Images>? images;
  bool? isBuyNowProduct;
  bool? isExpressProduct;
  bool? isSubstituted;
  bool? marketplaceProduct;
  int? maxToOrder;
  String? measure;
  double? minimumWeightToOrder;
  String? name;
  String? nature;
  bool? onDemand;
  String? onlineName;
  bool? preorder;
  Price? price;
  String? productCategoriesHearchi;
  String? productColor;
  String? productType;
  String? productTypeDM51;
  double? quantity;
  String? size;
  SizeInfo? sizeInfo;
  bool? soldByWeight;
  Stock? stock;
  String? url;
  bool? volumePricesFlag;
  bool? warranty;
  double? weightIncrement;
  MainOffer? mainOffer;
  List<GroceryOffers>? offers;
  String? bulkMessage;
  // This is AA grocer entity and it used for retriving product details
  String? slug;

  GroceryProduct({
    this.availableForPickup,
    this.averageRating,
    this.averageWeightByKg,
    this.brandName,
    this.cashbackStickerVisible,
    this.categories,
    this.clickUrl,
    this.code,
    this.countryOrigin,
    this.deliveryTimeDescription,
    this.description,
    this.eligibleForGiftWrapping,
    this.freeDelivery,
    this.freeDeliveryThreshold,
    this.freeInstallation,
    this.genuineStock,
    this.images,
    this.isBuyNowProduct,
    this.isExpressProduct,
    this.isSubstituted,
    this.marketplaceProduct,
    this.maxToOrder,
    this.measure,
    this.minimumWeightToOrder,
    this.name,
    this.nature,
    this.onDemand,
    this.onlineName,
    this.preorder,
    this.price,
    this.productCategoriesHearchi,
    this.productColor,
    this.productType,
    this.productTypeDM51,
    this.quantity,
    this.size,
    this.sizeInfo,
    this.soldByWeight,
    this.stock,
    this.url,
    this.volumePricesFlag,
    this.warranty,
    this.weightIncrement,
    this.mainOffer,
    this.bulkMessage,
    this.offers,
    this.slug
  });
}

class GroceryCategories {
  String? code;
  int? level;
  String? name;
  GroceryCategories({this.code, this.level, this.name});
}

class Images {
  String? format;
  String? imageType;
  String? url;

  Images({this.format, this.imageType, this.url});
}

class Price {
  String? currencyIso;
  String? currencyName;
  double? differenceInPercentForPromo;
  double? discountPrecent;
  Price? discountPrice;
  String? discountPriceFormatted;
  String? discountType;
  Price? finalPrice;
  Price? originalPrice;
  String? formattedValue;
  String? mafCurrency;
  double? price;
  String? priceType;
  bool? soldByWeight;
  double? value;

  Price({
    this.currencyIso,
    this.currencyName,
    this.differenceInPercentForPromo,
    this.discountPrecent,
    this.discountPrice,
    this.discountPriceFormatted,
    this.discountType,
    this.finalPrice,
    this.originalPrice,
    this.formattedValue,
    this.mafCurrency,
    this.price,
    this.priceType,
    this.soldByWeight,
    this.value,
  });
}

class Stock {
  bool? isAvailable;
  String? stockLevelStatus;
  int? stockLevel;

  Stock({this.isAvailable, this.stockLevelStatus, this.stockLevel});
}

class MainOffer {
  String? code;
  String? shopName;
  String? shopSlug; // This is AA grocer entity and it used for retriving merchant details
  String? shopCode; // This is AA grocer entity and it used for retriving merchant details
  bool? isOffer;
  double? quantity;
  MainOffer({
    this.code,
    this.shopName,
    this.shopSlug,
    this.shopCode,
    this.isOffer,
    this.quantity,
  });
}

class SizeInfo {
  int? multiplier;
  String? unit;
  double? quantity;
  SizeInfo({
    this.multiplier,
    this.unit,
    this.quantity,
  });
}

class GroceryOffers {
  String? code;
  String? defaultDeliveryMode;
  String? description;
  bool? isOffer;
  int? leadTimeToShip;
  int? maxDeliveryDay;
  int? minDeliveryDay;
  int? quantity;
  String? shopCode;
  int? shopEvaluationCount;
  int? shopGrade;
  String? shopName;
  String? shopSku;
  bool? showExtendedWarranty;
  String? state;
  Price? price;

  GroceryOffers({
    this.code,
    this.defaultDeliveryMode,
    this.description,
    this.isOffer,
    this.leadTimeToShip,
    this.maxDeliveryDay,
    this.minDeliveryDay,
    this.quantity,
    this.shopCode,
    this.shopEvaluationCount,
    this.shopGrade,
    this.shopName,
    this.shopSku,
    this.showExtendedWarranty,
    this.state,
    this.price,
  });
}
