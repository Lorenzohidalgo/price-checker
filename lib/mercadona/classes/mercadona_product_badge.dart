class MercadonaProductBadge {
  bool? isWater;
  bool? requiresAgeCheck;

  MercadonaProductBadge({this.isWater, this.requiresAgeCheck});

  MercadonaProductBadge.fromJson(Map<String, dynamic> json) {
    isWater = json['is_water'];
    requiresAgeCheck = json['requires_age_check'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_water'] = isWater;
    data['requires_age_check'] = requiresAgeCheck;
    return data;
  }
}
