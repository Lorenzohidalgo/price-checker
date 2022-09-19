import 'package:price_checker/mercadona/classes/mercadona_product_supplier.dart';

class MercadonaProductDetails {
  String? brand;
  String? origin;
  List<MercadonaProductSupplier>? suppliers;
  String? legalName;
  String? description;
  String? counterInfo;
  String? dangerMentions;
  String? alcoholByVolume;
  String? mandatoryMentions;
  String? productionVariant;
  String? usageInstructions;
  String? storageInstructions;

  MercadonaProductDetails({
    this.brand,
    this.origin,
    this.suppliers,
    this.legalName,
    this.description,
    this.counterInfo,
    this.dangerMentions,
    this.alcoholByVolume,
    this.mandatoryMentions,
    this.productionVariant,
    this.usageInstructions,
    this.storageInstructions,
  });

  MercadonaProductDetails.fromJson(Map<String, dynamic> json) {
    brand = json['brand'];
    origin = json['origin'];
    if (json['suppliers'] != null) {
      suppliers = <MercadonaProductSupplier>[];
      json['suppliers'].forEach((v) {
        suppliers!.add(MercadonaProductSupplier.fromJson(v));
      });
    }
    legalName = json['legal_name'];
    description = json['description'];
    counterInfo = json['counter_info'];
    dangerMentions = json['danger_mentions'];
    alcoholByVolume = json['alcohol_by_volume'];
    mandatoryMentions = json['mandatory_mentions'];
    productionVariant = json['production_variant'];
    usageInstructions = json['usage_instructions'];
    storageInstructions = json['storage_instructions'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['brand'] = brand;
    data['origin'] = origin;
    if (suppliers != null) {
      data['suppliers'] = suppliers!.map((v) => v.toString).toList();
    }
    data['legal_name'] = legalName;
    data['description'] = description;
    data['counter_info'] = counterInfo;
    data['danger_mentions'] = dangerMentions;
    data['alcohol_by_volume'] = alcoholByVolume;
    data['mandatory_mentions'] = mandatoryMentions;
    data['production_variant'] = productionVariant;
    data['usage_instructions'] = usageInstructions;
    data['storage_instructions'] = storageInstructions;
    return data;
  }
}
