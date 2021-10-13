import 'package:retrofit_tutorial/airasia/carrefour_model/grocery_categories_details.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/grocery_products.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/product.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/search.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_menu_products_response.dart';
import 'package:retrofit_tutorial/airasia/entities/grocery_product_filters.dart';
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
            name: element.name,
            subcategories: element.children == null ? null : subcategories));
      });

      return categories;
    } on Exception catch (err) {
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

GroceryProductsFromCategories mapGroceryMenuProductsToEntity(
    List<GroceryMenuProducts>? aaMenusProducts,
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
    var groceryProducts = <GroceryProduct>[];

    aaMenusProducts.forEach((element) {
      var product = GroceryProduct();
      product.name = element.name;
      product.onlineName = element.name;
      product.images = [Images(format: '', imageType: '', url: element.image)];
      product.quantity = element.quantity?.toDouble();
      product.stock = Stock(
          isAvailable: (element.quantity != null && element.quantity! > 0));
      product.price = Price(
          price: element.price,
          finalPrice: Price(value: element.minSubPrice),
          differenceInPercentForPromo:
          (element.discountPercentage != '-Infinity')
              ? double.parse(element.discountPercentage ?? '0')
              : null,
          discountPrice: Price(value: element.discountPrice));
      groceryProducts.add(product);
    });

    categoryProducts.products = groceryProducts;
  }

  return categoryProducts;
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
