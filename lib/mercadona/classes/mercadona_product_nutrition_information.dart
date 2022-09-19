class MercadonaProductNutritionInformation {
  String? allergens;
  String? ingredients;

  MercadonaProductNutritionInformation({
    this.allergens,
    this.ingredients,
  });

  MercadonaProductNutritionInformation.fromJson(Map<String, dynamic> json) {
    allergens = json['allergens'];
    ingredients = json['ingredients'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['allergens'] = allergens;
    data['ingredients'] = ingredients;
    return data;
  }
}
