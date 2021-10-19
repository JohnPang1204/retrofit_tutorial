class AirAsiaGroceryApis {
  static const String kStagingBaseUrl = 'https://api-bee.stgairasia.com';
  static const String kProductionBaseUrl = 'https://bee.apiairasia.com';

  static const getTags = '/menu/v1/tags';
  static const getProductsCount = '/menu/v1/products-count';
  static const getProduct = '/menu/v1/products-aa';
  static const getProductFilters = '/menu/v1/products-filters';
}

class AirAsiaCarouselApis{
  static const String kBaseUrl = 'https://cdn.contentstack.io';
  static const getCarouselIds = '/v3/content_types/of_home_tags/entries';

  static const apiKey = 'blt3ada34ac485961fd';
  static const stagingAccessToken = 'cse7bbd598b0db73f52c33e6da';
  static const prodAccessToken = 'cs88d29968cf04762fd2a4fea1';
}