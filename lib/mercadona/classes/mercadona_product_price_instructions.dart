class MercadonaProductPriceInstructions {
  int? iva;
  bool? isNew;
  bool? isPack;
  String? packSize;
  String? unitName;
  double? unitSize;
  String? bulkPrice;
  String? unitPrice;
  bool? approxSize;
  String? sizeFormat;
  String? totalUnits;
  bool? unitSelector;
  bool? bunchSelector;
  String? drainedWeight;
  int? sellingMethod;
  bool? priceDecreased;
  String? referencePrice;
  int? minBunchAmount;
  String? referenceFormat;
  int? incrementBunchAmount;

  MercadonaProductPriceInstructions({
    this.iva,
    this.isNew,
    this.isPack,
    this.packSize,
    this.unitName,
    this.unitSize,
    this.bulkPrice,
    this.unitPrice,
    this.approxSize,
    this.sizeFormat,
    this.totalUnits,
    this.unitSelector,
    this.bunchSelector,
    this.drainedWeight,
    this.sellingMethod,
    this.priceDecreased,
    this.referencePrice,
    this.minBunchAmount,
    this.referenceFormat,
    this.incrementBunchAmount,
  });

  MercadonaProductPriceInstructions.fromJson(Map<String, dynamic> json) {
    iva = json['iva'];
    isNew = json['is_new'];
    isPack = json['is_pack'];
    packSize = json['pack_size'];
    unitName = json['unit_name'];
    unitSize = json['unit_size'];
    bulkPrice = json['bulk_price'];
    unitPrice = json['unit_price'];
    approxSize = json['approx_size'];
    sizeFormat = json['size_format'];
    totalUnits = json['total_units'];
    unitSelector = json['unit_selector'];
    bunchSelector = json['bunch_selector'];
    drainedWeight = json['drained_weight'];
    sellingMethod = json['selling_method'];
    priceDecreased = json['price_decreased'];
    referencePrice = json['reference_price'];
    minBunchAmount = json['min_bunch_amount'];
    referenceFormat = json['reference_format'];
    incrementBunchAmount = json['increment_bunch_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['iva'] = iva;
    data['is_new'] = isNew;
    data['is_pack'] = isPack;
    data['pack_size'] = packSize;
    data['unit_name'] = unitName;
    data['unit_size'] = unitSize;
    data['bulk_price'] = bulkPrice;
    data['unit_price'] = unitPrice;
    data['approx_size'] = approxSize;
    data['size_format'] = sizeFormat;
    data['total_units'] = totalUnits;
    data['unit_selector'] = unitSelector;
    data['bunch_selector'] = bunchSelector;
    data['drained_weight'] = drainedWeight;
    data['selling_method'] = sellingMethod;
    data['price_decreased'] = priceDecreased;
    data['reference_price'] = referencePrice;
    data['min_bunch_amount'] = minBunchAmount;
    data['reference_format'] = referenceFormat;
    data['increment_bunch_amount'] = incrementBunchAmount;
    return data;
  }
}
