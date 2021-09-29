import 'package:retrofit_tutorial/airasia/entities/grocery_tag_responses.dart';
import 'package:retrofit_tutorial/airasia/model/grocery_categories_details.dart';


List<GroceryCategoriesDetails> mapGroceryTagResponseToEntity(
    GroceryTagResponse? response) {
  if (response == null || response.data == null) {
    return [];
  } else {
    try {
      var categories = <GroceryCategoriesDetails>[];

      response.data!.forEach((element) {
        var isSubcategoriesNotEmpty = element.children != null;
        var subcategories = <GroceryCategoriesDetails>[];

        if (isSubcategoriesNotEmpty) {
          element.children?.forEach((children) {
            subcategories.add(GroceryCategoriesDetails(
                id: children.uuid,
                name: children.name,
                thumbnail: GroceryImages(url: children.thumbnail)));
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
