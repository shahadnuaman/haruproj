import 'label.dart';
import 'service_image.dart';
import 'service_opinion.dart';

class ProductsCardModel {
  String? id;
  Label? label;
  String? backgroundImage;
  String? name;
  String? description;
  String? time;
  List<ServiceImage>? serviceImages;
  double? price;
  List<ServiceOpinion>? serviceOpinions;

  ProductsCardModel({
    this.id,
    this.label,
    this.backgroundImage,
    this.name,
    this.description,
    this.time,
    this.serviceImages,
    this.price,
    this.serviceOpinions,
  });

  factory ProductsCardModel.fromJson(Map<String, dynamic> json) {
    return ProductsCardModel(
      id: json['id'] as String?,
      label: json['label'] == null
          ? null
          : Label.fromJson(json['label'] as Map<String, dynamic>),
      backgroundImage: json['background_image'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      time: json['time'] as String?,
      serviceImages: (json['Service_images'] as List<dynamic>?)
          ?.map((e) => ServiceImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as double?,
      serviceOpinions: (json['ServiceOpinions'] as List<dynamic>?)
          ?.map((e) => ServiceOpinion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'label': label?.toJson(),
        'background_image': backgroundImage,
        'name': name,
        'description': description,
        'time': time,
        'Service_images': serviceImages?.map((e) => e.toJson()).toList(),
        'price': price,
        'ServiceOpinions': serviceOpinions?.map((e) => e.toJson()).toList(),
      };
}
