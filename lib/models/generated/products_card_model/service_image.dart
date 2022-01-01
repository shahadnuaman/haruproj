class ServiceImage {
  String? image;
  bool? isDefaultImage;

  ServiceImage({this.image, this.isDefaultImage});

  factory ServiceImage.fromJson(Map<String, dynamic> json) => ServiceImage(
      image: json['image'] as String?,
      isDefaultImage: json['is_default_image'] as bool?);

  Map<String, dynamic> toJson() =>
      {'image': image, 'isDefaultImage': isDefaultImage};
}
