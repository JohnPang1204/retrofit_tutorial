class AirAsiaGroceryApis {
  static const String kStagingBaseUrl = 'https://api-bee.stgairasia.com';
  static const String kProductionBaseUrl = 'https://bee.apiairasia.com';

  static const getTags = '/menu/v1/tags';
  static const getProductsCount = '/menu/v1/products-count';
  static const getProduct = '/menu/v1/products-aa';
  static const getProductFilters = '/menu/v1/products-filters';
}

class AirAsiaCarouselApis{
  static const String kStagingBaseUrl = 'https://cdn.contentstack.io';
  static const String kProductionBaseUrl = 'https://cdn.contentstack.io';


  static const getCarouselIds = '/v3/content_types/of_home_tags/entries';
}