class GroceryCategoriesDetails extends Object {
  String? id;

  String? name;

  GroceryImages? thumbnail;

  GroceryImages? mediaMobile;

  GroceryImages? mediaWeb;

  GroceryImages? groceryDealImages;

  List<GroceryCategoriesDetails>? subcategories;

  GroceryCategoriesDetails({
    this.id,
    this.name,
    this.thumbnail,
    this.mediaMobile,
    this.mediaWeb,
    this.groceryDealImages,
    this.subcategories,
  });
}

class GroceryImages extends Object {
  String? url;

  GroceryImages({
    this.url,
  });
}

// class GrocerySubcategories extends Object {
//   String id;

//   String name;

//   GroceryImages thumbnail;

//   GroceryImages mediaMobile;

//   GroceryImages mediaWeb;

//   GroceryImages groceryDealImages;

//   List<GrocerySubcategories> subcategories;

//   GrocerySubcategories({
//     this.id,
//     this.name,
//     this.thumbnail,
//     this.mediaMobile,
//     this.mediaWeb,
//     this.groceryDealImages,
//     this.subcategories,
//   });
// }
