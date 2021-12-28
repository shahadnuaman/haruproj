class Products {
  String? id;
  bool? isFeatured;
  String? name;
  String? description;
  String? size;
  int? qty;
  int? price;
  int? discountedPrice;
  Category? category;
  String? created;
  String? updated;

  Products(
      {this.id,
      this.isFeatured,
      this.name,
      this.description,
      this.size,
      this.qty,
      this.price,
      this.discountedPrice,
      this.category,
      this.created,
      this.updated});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isFeatured = json['is_featured'];
    name = json['name'];
    description = json['description'];
    size = json['size'];
    qty = json['qty'];
    price = json['price'];
    discountedPrice = json['discounted_price'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    created = json['created'];
    updated = json['updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['is_featured'] = this.isFeatured;
    data['name'] = this.name;
    data['description'] = this.description;
    data['size'] = this.size;
    data['qty'] = this.qty;
    data['price'] = this.price;
    data['discounted_price'] = this.discountedPrice;
    if (this.category != null) {
      data['category'] = category?.toJson();
    }
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}

class Category {
  String? id;
  String? name;
  String? description;
  String? image;

  Category({this.id, this.name, this.description, this.image});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    return data;
  }
}
