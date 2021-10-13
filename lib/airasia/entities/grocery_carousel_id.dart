class GroceryCarouselResponse {
  GroceryCarouselResponse({
    this.entries,
  });

  List<CarouselEntries>? entries;

  GroceryCarouselResponse.fromJson(Map<String, dynamic> json) {
    entries =
        

        List.from(json['entries'])
        .map((e) => CarouselEntries.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['entries'] = entries?.map((e) => e.toJson()).toList();
    return _data;
  }
}

class CarouselEntries {
  CarouselEntries({
    this.slug,
  });

  String? slug;

  CarouselEntries.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['slug'] = slug;
    return _data;
  }
}
