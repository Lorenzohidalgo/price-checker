import 'package:price_checker/mercadona/classes/mercadona_category.dart';
import 'package:price_checker/mercadona/classes/mercadona_product_badge.dart';
import 'package:price_checker/mercadona/classes/mercadona_product_details.dart';
import 'package:price_checker/mercadona/classes/mercadona_product_nutrition_information.dart';
import 'package:price_checker/mercadona/classes/mercadona_product_photo.dart';
import 'package:price_checker/mercadona/classes/mercadona_product_price_instructions.dart';

class MercadonaProduct {
  String? id;
  String? ean;
  String? slug;
  String? brand;
  int? limit;
  MercadonaProductBadge? badges;
  String? origin;
  List<MercadonaProductPhoto>? photos;
  MercadonaProductDetails? details;
  String? packaging;
  bool? published;
  String? shareUrl;
  String? thumbnail;
  List<MercadonaCategory>? categories;
  List<String>? extraInfo;
  String? displayName;
  bool? isVariableWeight;
  MercadonaProductPriceInstructions? priceInstructions;
  MercadonaProductNutritionInformation? nutritionInformation;

  MercadonaProduct({
    this.id,
    this.ean,
    this.slug,
    this.brand,
    this.limit,
    this.badges,
    this.origin,
    this.photos,
    this.details,
    this.packaging,
    this.published,
    this.shareUrl,
    this.thumbnail,
    this.categories,
    this.extraInfo,
    this.displayName,
    this.isVariableWeight,
    this.priceInstructions,
    this.nutritionInformation,
  });

  MercadonaProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ean = json['ean'];
    slug = json['slug'];
    brand = json['brand'];
    limit = json['limit'];
    badges = json['badges'] != null
        ? MercadonaProductBadge.fromJson(json['badges'])
        : null;
    origin = json['origin'];
    if (json['photos'] != null) {
      photos = <MercadonaProductPhoto>[];
      json['photos'].forEach((v) {
        photos!.add(MercadonaProductPhoto.fromJson(v));
      });
    }
    details = json['details'] != null
        ? MercadonaProductDetails.fromJson(json['details'])
        : null;
    packaging = json['packaging'];
    published = json['published'];
    shareUrl = json['share_url'];
    thumbnail = json['thumbnail'];
    if (json['categories'] != null) {
      categories = <MercadonaCategory>[];
      json['categories'].forEach((v) {
        categories!.add(MercadonaCategory.fromJson(v));
      });
    }
    if (json['extra_info'] != null) {
      extraInfo = <String>[];
      json['extra_info'].forEach((v) {
        extraInfo!.add(v);
      });
    }
    displayName = json['display_name'];
    isVariableWeight = json['is_variable_weight'];
    priceInstructions = json['price_instructions'] != null
        ? MercadonaProductPriceInstructions.fromJson(json['price_instructions'])
        : null;
    nutritionInformation = json['nutrition_information'] != null
        ? MercadonaProductNutritionInformation.fromJson(
            json['nutrition_information'],
          )
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['ean'] = ean;
    data['slug'] = slug;
    data['brand'] = brand;
    data['limit'] = limit;
    if (badges != null) {
      data['badges'] = badges!.toJson();
    }
    data['origin'] = origin;
    if (photos != null) {
      data['photos'] = photos!.map((v) => v.toJson()).toList();
    }
    if (details != null) {
      data['details'] = details!.toJson();
    }
    data['packaging'] = packaging;
    data['published'] = published;
    data['share_url'] = shareUrl;
    data['thumbnail'] = thumbnail;
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    if (extraInfo != null) {
      data['extra_info'] = extraInfo!.toList();
    }
    data['display_name'] = displayName;
    data['is_variable_weight'] = isVariableWeight;
    if (priceInstructions != null) {
      data['price_instructions'] = priceInstructions!.toJson();
    }
    if (nutritionInformation != null) {
      data['nutrition_information'] = nutritionInformation!.toJson();
    }
    return data;
  }
}
