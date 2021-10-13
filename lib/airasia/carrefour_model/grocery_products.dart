import 'package:equatable/equatable.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/product.dart';
import 'package:retrofit_tutorial/airasia/carrefour_model/search.dart';

class GroceryProductsFromCategories extends Object with EquatableMixin {
  List<Facets>? facets;

  Pagination? pagination;

  List<GroceryProduct>? products;

  List<Sorts>? sorts;

  String? type;

  GroceryProductsFromCategories({
    this.facets,
    this.pagination,
    this.products,
    this.sorts,
    this.type,
  });

  @override
  List<Object?> get props => [];
}
