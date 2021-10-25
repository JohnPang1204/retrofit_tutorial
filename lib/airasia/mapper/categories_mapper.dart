import 'package:retrofit_tutorial/airasia/carrefour_model/grocery_categories_details.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/grocery_products.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/product.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/product_detail.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/search.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_menu_products_response.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_product_details.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_product_filters.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_similar_products.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_store_products.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_tag_responses.dart';


List<GroceryCategoriesDetails> mapGroceryTagResponseToEntity(
    GroceryTagResponse? response) {
  if (response == null || response.data == null) {
    return [];
  } else {
    try {
      var categories = <GroceryCategoriesDetails>[];

      // TODO[AAGrocery] find a better solution to handle subcategories,
      response.data!.forEach((element) {
        var isSubcategoriesNotEmpty = element.children != null;
        var subcategories = <GroceryCategoriesDetails>[];

        if (isSubcategoriesNotEmpty) {
          element.children?.forEach((children) {
            subcategories.add(GroceryCategoriesDetails(
                id: children.uuid,
                name: children.name,
                thumbnail: GroceryImages(url: children.thumbnail),
                subcategories: _getSubCategoriesList(children)));
          });
        }

        categories.add(GroceryCategoriesDetails(
            id: element.uuid,
            type: element.type,
            name: element.name,
            subcategories: element.children == null ? null : subcategories));
      });

      return categories;
    } on Exception catch (err) {
      // LogUtil()
      //     .printLog(tag: 'AirAsiaUserDetailMapper', message: err.toString());
      rethrow;
    }
  }
}

List<GroceryCategoriesDetails>? _getSubCategoriesList(
    GroceryTagChildren category) {
  var subcategories = <GroceryCategoriesDetails>[];

  if (category.children != null) {
    category.children!.forEach((subChildren) {
      subcategories.add(GroceryCategoriesDetails(
        id: subChildren.uuid,
        name: subChildren.name,
        thumbnail: GroceryImages(url: subChildren.thumbnail),
      ));
    });
  }

  return subcategories;
}

GroceryProductsFromCategories mapAAGroceryProductsToCategoriesProducts(
    List<AAGroceryProducts>? aaMenusProducts,
    List<ProductFiltersData>? productsFilters,
    int? totalResults,
    int? currentPage) {
  var categoryProducts = GroceryProductsFromCategories();

  categoryProducts.facets = mapProductFiltersToEntity(productsFilters);
  categoryProducts.sorts = null;

  final pageSize = 20;
  var totaPages = (totalResults != null) ? (totalResults / pageSize).ceil() : 1;
  categoryProducts.pagination = Pagination(
      currentPage: currentPage,
      pageSize: pageSize,
      totalResults: totalResults,
      totalPages: totaPages);

  if (aaMenusProducts != null) {
    categoryProducts.products =
        mapAAGroceryProductsToGroceryProducts(aaMenusProducts);
  }

  return categoryProducts;
}

List<GroceryProduct> mapAAGroceryProductsToGroceryProducts(
    List<AAGroceryProducts>? aaMenusProducts) {
  var groceryProducts = <GroceryProduct>[];

  if (aaMenusProducts == null) {
    return groceryProducts;
  }

  aaMenusProducts.forEach((element) {
    var product = GroceryProduct();
    var quantityOfOptionGroups = element.optionGroups == null
        ? <int>[]
        : element.optionGroups!.map((e) => e.quantity ?? 0).toList();
    var totalOfQuantity = quantityOfOptionGroups.isNotEmpty
        ? quantityOfOptionGroups.reduce((a, b) => a + b)
        : 0;
    product.code = element.uuid;
    product.name = element.name;
    product.onlineName = element.name;
    product.description = element.description;
    product.slug = element.slug;
    product.productType = 'food';
    product.mainOffer = MainOffer(
        shopCode: element.store?.uuid,
        shopName: element.store?.name,
        shopSlug: element.store?.slug);
    product.images = [Images(format: '', imageType: '', url: element.image)];
    product.quantity = totalOfQuantity.toDouble();
    product.stock = Stock(isAvailable: totalOfQuantity > 0);
    product.price = Price(
        price: element.price,
        finalPrice: Price(value: element.minSubPrice),
        differenceInPercentForPromo:
        (element.discountPrice != null && element.discountPrice != 0)
            ? double.parse(element.discountPercentage ?? '0')
            : null,
        originalPrice: Price(value: element.discountPrice),
        discountPrice: Price(value: element.discountPrice));

    groceryProducts.add(product);
  });

  return groceryProducts;
}

List<Facets>? mapProductFiltersToEntity(
    List<ProductFiltersData>? productFilters) {
  if (productFilters == null) {
    return null;
  }

  var facets = <Facets>[];

  productFilters.forEach((filter) {
    facets.add(Facets(
      category: true,
      name: filter.type,
      totalItems: filter.data?.length ?? 0,
      values: (filter.data != null)
          ? filter.data!
          .map((e) => FacetValues(code: e.uuid, name: e.name))
          .toList()
          : null,
    ));
  });

  return facets;
}

GroceryProductFullDetail? mapProductDetailsToEntity(ProductDetails? detail) {
  if (detail == null) return null;

  var fullDetail = GroceryProductFullDetail();
  var productDetail = GroceryProductDetail();
  var extra = ExtraProductDetails();
  var quantityOfOptionGroups = detail.optionGroups == null
      ? <int>[]
      : detail.optionGroups!.map((e) => e.quantity ?? 0).toList();
  var totalOfQuantity = quantityOfOptionGroups.isNotEmpty
      ? quantityOfOptionGroups.reduce((a, b) => a + b)
      : 0;
  productDetail.code = detail.uuid;
  productDetail.name = detail.name;
  productDetail.marketingText = detail.description;
  productDetail.onlineName = detail.name;
  productDetail.productType = 'food';
  productDetail.images = [
    ProductDetailImages(format: '', imageType: '', url: detail.image)
  ];
  productDetail.price = ProductDetailPrice(
      value: detail.price,
      originalPrice: ProductDetailFinalPrice(value: detail.discountPrice),
      finalPrice: ProductDetailFinalPrice(value: detail.price),
      differenceInPercentForPromo:
      (detail.discountPrice != null && detail.discountPrice != 0)
          ? (double.parse(detail.discountPercentage ?? '0').round())
          : null);

  productDetail.stock = ProductDetailStock(
      isAvailable: totalOfQuantity > 0,
      maxQuantity: totalOfQuantity,
      stockLevelStatus: totalOfQuantity > 0 ? 'In Stock' : 'OUT OF STOCK');

  productDetail.optionGroups = detail.optionGroups;
  extra.images = detail.gallery != null
      ? detail.gallery!
      .map((e) => GroceryProductImages(
    extraSmall: e.url,
    small: e.url,
    medium: e.url,
    large: e.url,
    extraLarge: e.url,
  ))
      .toList()
      : null;

  fullDetail.groceryProductDetail = productDetail;
  fullDetail.extraProductDetails = extra;
  return fullDetail;
}

List<GroceryProduct> mapStoreProductsToEntity(
    List<StoreProduct>? storeProducts) {
  var groceryProducts = <GroceryProduct>[];

  if (storeProducts == null || storeProducts.isEmpty) {
    return groceryProducts;
  }

  storeProducts!.forEach((element) {
    var product = GroceryProduct();
    var quantityOfOptionGroups = element.optionGroups == null
        ? <int>[]
        : element.optionGroups!.map((e) => e.quantity ?? 0).toList();
    var totalOfQuantity = quantityOfOptionGroups.isNotEmpty
        ? quantityOfOptionGroups.reduce((a, b) => a + b)
        : 0;
    product.code = element.uuid;
    product.name = element.name;
    product.onlineName = element.name;
    product.description = element.description;
    product.slug = element.slug;
    product.productType = 'food';
    product.mainOffer = MainOffer(
      shopCode: element.store?.uuid,
      shopName: element.store?.name,
      shopSlug: element.store?.slug,
    );
    product.images = [Images(format: '', imageType: '', url: element.image)];
    product.quantity = totalOfQuantity.toDouble();
    product.stock = Stock(isAvailable: (totalOfQuantity > 0));
    product.price = Price(
        price: element.price,
        finalPrice: Price(value: element.minSubPrice),
        differenceInPercentForPromo:
        (element.discountPrice != null && element.discountPrice != 0)
            ? double.parse(element.discountPercentage ?? '0')
            : null,
        originalPrice: Price(value: element.discountPrice),
        discountPrice: Price(value: element.discountPrice));
    groceryProducts.add(product);
  });

  return groceryProducts;
}

List<GroceryProduct> mapSimilarProductsToEntity(
    List<SimilarProduct>? similarProducts) {
  var groceryProducts = <GroceryProduct>[];


    if (similarProducts == null || similarProducts.isEmpty) {

      return groceryProducts;
  }

  similarProducts!.forEach((element) {
    var product = GroceryProduct();
    var quantityOfOptionGroups = element.optionGroups == null
        ? <int>[]
        : element.optionGroups!.map((e) => e.quantity ?? 0).toList();
    var totalOfQuantity = quantityOfOptionGroups.isNotEmpty
        ? quantityOfOptionGroups.reduce((a, b) => a + b)
        : 0;
    product.code = element.uuid;
    product.name = element.name;
    product.onlineName = element.name;
    product.description = element.description;
    product.slug = element.slug;
    product.productType = 'food';
    product.mainOffer = MainOffer(
      shopCode: element.store?.uuid,
      shopName: element.store?.name,
      shopSlug: element.store?.slug,
    );
    product.images = [Images(format: '', imageType: '', url: element.image)];
    product.quantity = totalOfQuantity.toDouble();
    product.stock = Stock(isAvailable: totalOfQuantity > 0);
    product.price = Price(
        price: element.price,
        finalPrice: Price(value: element.minSubPrice),
        differenceInPercentForPromo:
        (element.discountPrice != null && element.discountPrice != 0)
            ? double.parse(element.discountPercentage ?? '0')
            : null,
        originalPrice: Price(value: element.discountPrice),
        discountPrice: Price(value: element.discountPrice));
    groceryProducts.add(product);
  });

  return groceryProducts;
}
