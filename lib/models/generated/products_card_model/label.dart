class Label {
  String? id;
  String? name;

  Label({this.id, this.name});

  factory Label.fromJson(Map<String, dynamic> json) => Label(
        id: json['id'] as String?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
