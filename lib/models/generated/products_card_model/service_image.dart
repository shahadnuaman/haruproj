class ServiceImage {
  String? id;
  String? image;

  ServiceImage({this.id, this.image});

  factory ServiceImage.fromJson(Map<String, dynamic> json) => ServiceImage(
        id: json['id'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
      };
}
