class ProductsModel {
  final String? id;
  final String? sku;
  final String? brand;
  final String? name;
  final String? colorway;
  final String? gender;
  final String? silhouette;
  final String? releaseYear;
  final String? releaseDate;
  final num? retailPrice;
  final num? estimatedMarketValue;
  final String? story;
  final SneakerImage? image;

  ProductsModel({
    required this.id,
    required this.sku,
    required this.brand,
    required this.name,
    required this.colorway,
    required this.gender,
    required this.silhouette,
    required this.releaseYear,
    required this.releaseDate,
    required this.retailPrice,
    required this.estimatedMarketValue,
    required this.story,
    required this.image,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json['id'] ?? "",
      sku: json['sku'] ?? "",
      brand: json['brand'] ?? "",
      name: json['name'] ?? "",
      colorway: json['colorway'] ?? "",
      gender: json['gender'] ?? "",
      silhouette: json['silhouette'] ?? "",
      releaseYear: json['releaseYear'] ?? "2003",
      releaseDate: json['releaseDate'] ?? "",
      retailPrice: json['retailPrice'] ?? 10.0,
      estimatedMarketValue: json['estimatedMarketValue'] ?? 10.0,
      story: json['story'] ?? '',
      image: SneakerImage.fromJson(json['image'] ??
         {
           "original":"original",
           "small":"small",
           "thumbnail":"thumbnail",
         }),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'sku': sku,
      'brand': brand,
      'name': name,
      'colorway': colorway,
      'gender': gender,
      'silhouette': silhouette,
      'releaseYear': releaseYear,
      'releaseDate': releaseDate,
      'retailPrice': retailPrice,
      'estimatedMarketValue': estimatedMarketValue,
      'story': story,
      'image': image?.toJson(),
    };
  }
}

class SneakerImage {
  final List<String> image360 = [];
  final String? original;
  final String? small;
  final String? thumbnail;

  SneakerImage({
    required this.original,
    required this.small,
    required this.thumbnail,
  });

  factory SneakerImage.fromJson(Map<String, dynamic> json) {
    return SneakerImage(
      original: json['original'] ?? "",
      small: json['small'] ?? "",
      thumbnail: json['thumbnail'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '360': image360,
      'original': original,
      'small': small,
      'thumbnail': thumbnail,
    };
  }
}
