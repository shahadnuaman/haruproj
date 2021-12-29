class ServiceOpinion {
  String? id;
  int? rating;
  String? userId;
  String? serviceId;
  String? description;
  String? time;

  ServiceOpinion({
    this.id,
    this.rating,
    this.userId,
    this.serviceId,
    this.description,
    this.time,
  });

  factory ServiceOpinion.fromJson(Map<String, dynamic> json) {
    return ServiceOpinion(
      id: json['id'] as String?,
      rating: json['rating'] as int?,
      userId: json['user_id'] as String?,
      serviceId: json['service_id'] as String?,
      description: json['description'] as String?,
      time: json['time'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'rating': rating,
        'user_id': userId,
        'service_id': serviceId,
        'description': description,
        'time': time,
      };
}
