import 'package:price_checker/mercadona/classes/mercadona_product.dart';

class MercadonaCategory {
  int? id;
  String? name;
  int? order;
  int? level;
  int? layout;
  bool? published;
  List<MercadonaProduct>? products;
  List<MercadonaCategory>? categories;
  bool? isExtended;

  MercadonaCategory({
    this.id,
    this.name,
    this.order,
    this.level,
    this.layout,
    this.published,
    this.products,
    this.categories,
    this.isExtended,
  });

  MercadonaCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    order = json['order'];
    level = json['level'];
    layout = json['layout'];
    published = json['published'];
    if (json['products'] != null) {
      products = <MercadonaProduct>[];
      json['products'].forEach((v) {
        products!.add(MercadonaProduct.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <MercadonaCategory>[];
      json['categories'].forEach((v) {
        categories!.add(MercadonaCategory.fromJson(v));
      });
    }
    isExtended = json['is_extended'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['order'] = order;
    data['level'] = level;
    data['layout'] = layout;
    data['published'] = published;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    data['is_extended'] = isExtended;
    return data;
  }
}
