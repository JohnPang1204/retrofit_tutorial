import 'package:retrofit_tutorial/airasia/entities/grocery_product_details.dart';

class GroceryProductFullDetail {
  GroceryProductDetail? groceryProductDetail;
  ExtraProductDetails? extraProductDetails;
  GroceryProductFullDetail(
      {this.groceryProductDetail, this.extraProductDetails});
}

class ExtraProductDetails {
  StorageTemperature? storageTemperature;
  NutritionalValue? nutritionalValue;

  List<GroceryProductImages>? images;

  List<GroceryTechnicalDetails>? technicalDetails;
  ExtraProductDetails(
      {this.storageTemperature,
      this.nutritionalValue,
      this.images,
      this.technicalDetails});
}

class GroceryTechnicalDetails extends Object {
  String? name;

  List<GroceryItems>? items;

  GroceryTechnicalDetails({
    this.name,
    this.items,
  });
}

class GroceryItems extends Object {
  String? name;

  String? value;

  GroceryItems({
    this.name,
    this.value,
  });
}

class GroceryProductImages extends Object {
  String? extraSmall;

  String? small;

  String? medium;

  String? large;

  String? extraLarge;

  GroceryProductImages(
      {this.extraSmall, this.small, this.medium, this.large, this.extraLarge});
}

class StorageTemperature {
  String? info;
  String? preposition;
  StorageTemperature({this.info, this.preposition});
}

class NutritionalValue {
  List<FoodElements>? minerals;
  List<FoodElements>? vitamins;
  List<FoodElements>? typical;
  List<FoodElements>? other;
  List<FoodElements>? nutritionalFacts;
  NutritionalValue(
      {this.minerals,
      this.vitamins,
      this.other,
      this.typical,
      this.nutritionalFacts});
}

class FoodElements {
  String? name;
  String? value;
  FoodElements({this.name, this.value});
}

class GroceryProductDetail {
  double? averageRating;
  String? code;
  String? name;
  String? url;
  bool? purchasable; //
  bool? availableForPickup;
  int? numberOfReviews; //
  List<ProductDetailCategories>? categories;
  String? productType;
  String? onlineName;
  String? marketingText; //
  bool? warranty;
  bool? freeDelivery;
  bool? freeInstallation;
  bool? genuineStock;
  bool? onDemand;
  bool? preorder;
  String? countryOrigin;
  String? brandMarketingMessage; //
  int? averageWeightByKg;
  String? storageConditions; //
  String? preparationAndUSage; //
  String? size;
  String? nature;
  String? measure;
  String? ean; //
  int? maxToOrder;
  bool? soldByWeight;
  double? minOrderQuantity; //
  double? minimumWeightToOrder;
  String? productCategoriesHearchi;
  String? creationTime; //
  int? newOffers; //
  int? refurbishedOffers; //
  bool? displayOfferAsMainPrice; //
  String? deliveryTimeDescription;
  String? storeId; //
  String? productTypeDM51; //
  String? metaTitle; //
  String? metaDescription; //
  String? metaKeywords; //
  double? freeDeliveryThreshold;
  bool? cashbackStickerVisible; //
  double? width; //
  double? weight; //
  double? height; //
  double? depth; //
  String? status; //
  String? department; //
  String? section; //
  String? family; //
  String? subFamily; //
  bool? eligibleForGiftWrapping;
  bool? isLoved; //
  bool? incremental; //
  List<CategoriesHierarchy>? categoriesHierarchy; //
  bool? isBuyNowProduct;
  bool? isExpressProduct;
  List<ProductDetailImages>? images;
  List<ProductDetailReview>? reviews; //
  List<Classifications>? classifications; //
  ProductDetailPrice? price;
  ProductDetailStock? stock;
  GroceryMainOffer? groceryMainOffer;

  // Airasia Entities
  List<ProductOptionGroups>? optionGroups;


  GroceryProductDetail({
    this.averageRating,
    this.code,
    this.name,
    this.url,
    this.purchasable,
    this.availableForPickup,
    this.numberOfReviews,
    this.categories,
    this.productType,
    this.onlineName,
    this.marketingText,
    this.warranty,
    this.freeDelivery,
    this.freeInstallation,
    this.genuineStock,
    this.onDemand,
    this.preorder,
    this.countryOrigin,
    this.brandMarketingMessage,
    this.averageWeightByKg,
    this.storageConditions,
    this.preparationAndUSage,
    this.minimumWeightToOrder,
    this.size,
    this.nature,
    this.measure,
    this.ean,
    this.maxToOrder,
    this.soldByWeight,
    this.minOrderQuantity,
    this.productCategoriesHearchi,
    this.creationTime,
    this.newOffers,
    this.refurbishedOffers,
    this.displayOfferAsMainPrice,
    this.deliveryTimeDescription,
    this.storeId,
    this.productTypeDM51,
    this.metaTitle,
    this.metaDescription,
    this.metaKeywords,
    this.freeDeliveryThreshold,
    this.cashbackStickerVisible,
    this.width,
    this.weight,
    this.height,
    this.depth,
    this.status,
    this.department,
    this.section,
    this.family,
    this.subFamily,
    this.eligibleForGiftWrapping,
    this.isLoved,
    this.incremental,
    this.categoriesHierarchy,
    this.isBuyNowProduct,
    this.isExpressProduct,
    this.images,
    this.reviews,
    this.classifications,
    this.price,
    this.stock,
    this.groceryMainOffer,
  });
}

class GroceryMainOffer {
  String? code;

  String? shopName;

  String? shopCode;

  bool? showExtendedWarranty;

  bool? isOffer;

  int? quantity;

  ProductDetailPrice? price;

  int? leadTimeToShip;

  int? maxDeliveryDay;

  int? minDeliveryDay;

  String? defaultDeliveryMode;

  String? warrantyMessage;

  String? state;

  double? shopGrade;

  int? shopEvaluationCount;

  GroceryMainOffer({
    this.code,
    this.shopName,
    this.shopCode,
    this.showExtendedWarranty,
    this.isOffer,
    this.quantity,
    this.price,
    this.leadTimeToShip,
    this.maxDeliveryDay,
    this.minDeliveryDay,
    this.defaultDeliveryMode,
    this.warrantyMessage,
    this.state,
    this.shopGrade,
    this.shopEvaluationCount,
  });
}

class ProductDetailCategories {
  String? code;
  String? name;
  String? url;
  bool? comparable;
  String? categoryType;
  int? level;

  ProductDetailCategories(
      {this.code,
      this.name,
      this.url,
      this.comparable,
      this.categoryType,
      this.level});
}

class CategoriesHierarchy {
  String? name;
  String? url;
  bool? comparable;
  int? level;
  String? id;

  CategoriesHierarchy(
      {this.name, this.url, this.comparable, this.level, this.id});
}

class ProductDetailImages {
  String? imageType;
  String? format;
  String? url;

  ProductDetailImages({this.imageType, this.format, this.url});
}

class Classifications {
  String? code;
  String? name;
  List<Features>? features;

  Classifications({this.code, this.name, this.features});
}

class Features {
  String? code;
  String? name;
  bool? range;
  bool? comparable;
  List<FeatureValues>? featureValues;
  int? positionKey;
  bool? isKey;

  Features(
      {this.code,
      this.name,
      this.range,
      this.comparable,
      this.featureValues,
      this.positionKey,
      this.isKey});
}

class FeatureValues {
  String? value;

  FeatureValues({this.value});
}

class ProductDetailPrice {
  String? currencyIso;
  String? formattedValue;
  String? currencyName;
  double? value;
  ProductDetailFinalPrice? finalPrice;
  ProductDetailFinalPrice? originalPrice;
  int? dayLeft;
  int? differenceInPercentForPromo;
  String? mafCurrency;

  ProductDetailPrice(
      {this.currencyIso,
      this.formattedValue,
      this.currencyName,
      this.value,
      this.finalPrice,
      this.originalPrice,
      this.dayLeft,
      this.differenceInPercentForPromo,
      this.mafCurrency});
}

class ProductDetailFinalPrice {
  String? currencyIso;
  String? formattedValue;
  String? currencyName;
  double? value;
  String? mafCurrency;
  bool? soldByWeight;

  ProductDetailFinalPrice(
      {this.currencyIso,
      this.formattedValue,
      this.currencyName,
      this.value,
      this.mafCurrency,
      this.soldByWeight});
}

class ProductDetailStock {
  bool? isAvailable;
  String? stockLevelStatus;
  int? stockLevel;
  int? maxQuantity;
  String? pos;

  ProductDetailStock(
      {this.isAvailable,
      this.stockLevelStatus,
      this.stockLevel,
      this.maxQuantity,
      this.pos});
}

class ProductDetailReview extends Object {
  String? alias;
  String? comment;
  String? date;
  String? headline;
  String? id;
  double? rating;
  ReviewPrincipal? principal;

  ProductDetailReview({
    this.alias,
    this.comment,
    this.date,
    this.headline,
    this.id,
    this.rating,
    this.principal,
  });
}

class ReviewPrincipal extends Object {
  String? name;
  String? uid;

  ReviewPrincipal({
    this.name,
    this.uid,
  });
}
