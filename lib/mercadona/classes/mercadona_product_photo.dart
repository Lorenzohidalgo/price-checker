class MercadonaProductPhoto {
  String? zoom;
  String? regular;
  String? thumbnail;
  int? perspective;

  MercadonaProductPhoto({
    this.zoom,
    this.regular,
    this.thumbnail,
    this.perspective,
  });

  MercadonaProductPhoto.fromJson(Map<String, dynamic> json) {
    zoom = json['zoom'];
    regular = json['regular'];
    thumbnail = json['thumbnail'];
    perspective = json['perspective'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['zoom'] = zoom;
    data['regular'] = regular;
    data['thumbnail'] = thumbnail;
    data['perspective'] = perspective;
    return data;
  }
}
