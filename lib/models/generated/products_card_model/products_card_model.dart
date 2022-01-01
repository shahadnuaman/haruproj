// // import 'label.dart';
// // import 'service_image.dart';
// // import 'service_opinion.dart';

class ProductsCardModel {
  String? id;
  bool? isFeatured;
  String? name;
  String? description;
  List<Images>? images;
  String? size;
  int? qty;
  int? price;
  double? discountedPrice;
  Category? category;
  String? created;
  String? updated;

  ProductsCardModel(
      {this.id,
      this.isFeatured,
      this.name,
      this.description,
      this.images,
      this.size,
      this.qty,
      this.price,
      this.discountedPrice,
      this.category,
      this.created,
      this.updated});

  ProductsCardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isFeatured = json['is_featured'];
    name = json['name'];
    description = json['description'];
    // images =
    //     json['images'] != null ? new Images.fromJson(json['images']) : null;
    if (json['images'] != null) {
      // ignore: unnecessary_new, deprecated_member_use, prefer_collection_literals
      images = <Images>[];
      json['images'].forEach((v) {
        images?.add(new Images.fromJson(v));
      });
    }
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
    if (this.images != null) {
      data['images'] = this.images?.map((v) => v.toJson()).toList();
    }
    data['size'] = this.size;
    data['qty'] = this.qty;
    data['price'] = this.price;
    data['discounted_price'] = this.discountedPrice;
    if (this.category != null) {
      data['category'] = this.category?.toJson();
    }
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}

class Images {
  String? image;
  bool? isDefaultImage;

  Images({this.image, this.isDefaultImage});

  Images.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    isDefaultImage = json['is_default_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['is_default_image'] = this.isDefaultImage;
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

// class ProductsCardModel {
//   String? id;
//   bool? isFeatured;
//   String? name;
//   String? description;
//   images? images;
//   String? size;
//   int? qty;
//   int? price;
//   double? discountedPrice;
//   Category?category;
//   String? created;
//   String? updated;

//   ProductsCardModel(
//       {this.id,
//       this.isFeatured,
//       this.name,
//       this.description,
//       this.images,
//       this.size,
//       this.qty,
//       this.price,
//       this.discountedPrice,
//       this.category,
//       this.created,
//       this.updated});

//   ProductsCardModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     isFeatured = json['is_featured'];
//     name = json['name'];
//     description = json['description'];
//     if (json['images'] != null) {
//       // ignore: deprecated_member_use
//     //   images = <Images>[];
//     //   json['images'].forEach((v) {
//     //     images?.add(Images.fromJson(v));
//     //   });
//     // }
//      images =
//         json['images'] != null ? images?.fromJson(json['images']) : null;
//     size = json['size'];
//     qty = json['qty'];
//     price = json['price'];
//     discountedPrice = json['discounted_price'];
//     category =
//         json['category'] != null ? category.fromJson(json['category']) : null;
//     created = json['created'];
//     updated = json['updated'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = this.id;
//     data['is_featured'] = this.isFeatured;
//     data['name'] = this.name;
//     data['description'] = this.description;
//     // if (this.images != null) {
//     //   data['images'] = this.images?.map((v) => v.toJson()).toList();
//     // }

//     if (this.images != null) {
//       data['images'] = images?.toJson();
//     }
//     ;
//     data['size'] = this.size;
//     data['qty'] = this.qty;
//     data['price'] = this.price;
//     data['discounted_price'] = this.discountedPrice;
//     if (this.category != null) {
//       data['category'] = category?.toJson();
//     }
//     data['created'] = this.created;
//     data['updated'] = this.updated;
//     return data;
//   }
// }

// class Images {
//   String? image;
//   bool? isDefaultImage;

//   Images({this.image, this.isDefaultImage});

//   Images.fromJson(Map<String, dynamic> json) {
//     image = json['image'];
//     isDefaultImage = json['is_default_image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['image'] = this.image;
//     data['is_default_image'] = this.isDefaultImage;
//     return data;
//   }
// }

// class Category {
//   String? id;
//   String? name;
//   String? description;
//   String? image;

//   Category({this.id, this.name, this.description, this.image});

//   Category.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     description = json['description'];
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['description'] = this.description;
//     data['image'] = this.image;
//     return data;
//   }
// //   String? id;
// //   bool? isFeatured;
// //   String? name;
// //   String? description;
// //   String? size;
// //   int? qty;
// //   int? price;
// //   double? discountedPrice;
// //   Category? category;
// //   String? created;
// //   String? updated;

// //   ProductsCardModel(
// //       {this.id,
// //       this.isFeatured,
// //       this.name,
// //       this.description,
// //       this.size,
// //       this.qty,
// //       this.price,
// //       this.discountedPrice,
// //       this.category,
// //       this.created,
// //       this.updated});

// //   ProductsCardModel.fromJson(Map<String, dynamic> json) {
// //     id = json['id'];
// //     isFeatured = json['is_featured'];
// //     name = json['name'];
// //     description = json['description'];
// //     size = json['size'];
// //     qty = json['qty'];
// //     price = json['price'];
// //     discountedPrice = json['discounted_price'];
// //     category = json['category'] != null
// //         ? new Category.fromJson(json['category'])
// //         : null;
// //     created = json['created'];
// //     updated = json['updated'];
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = new Map<String, dynamic>();
// //     data['id'] = this.id;
// //     data['is_featured'] = this.isFeatured;
// //     data['name'] = this.name;
// //     data['description'] = this.description;
// //     data['size'] = this.size;
// //     data['qty'] = this.qty;
// //     data['price'] = this.price;
// //     data['discounted_price'] = this.discountedPrice;
// //     if (this.category != null) {
// //       data['category'] = category?.toJson();
// //     }
// //     data['created'] = this.created;
// //     data['updated'] = this.updated;
// //     return data;
// //   }
// // }

// // class Category {
// //   String? id;
// //   String? name;
// //   String? description;
// //   String? image;

// //   Category({this.id, this.name, this.description, this.image});

// //   Category.fromJson(Map<String, dynamic> json) {
// //     id = json['id'];
// //     name = json['name'];
// //     description = json['description'];
// //     image = json['image'];
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = new Map<String, dynamic>();
// //     data['id'] = this.id;
// //     data['name'] = this.name;
// //     data['description'] = this.description;
// //     data['image'] = this.image;
// //     return data;
// }

//   // String? id;
//   // Label? label;
//   // String? backgroundImage;
//   // String? name;
//   // String? description;
//   // String? time;
//   // List<ServiceImage>? serviceImages;
//   // double? price;
//   // List<ServiceOpinion>? serviceOpinions;

//   // ProductsCardModel({
//   //   this.id,
//   //   this.label,
//   //   this.backgroundImage,
//   //   this.name,
//   //   this.description,
//   //   this.time,
//   //   this.serviceImages,
//   //   this.price,
//   //   this.serviceOpinions,
//   // });

//   // factory ProductsCardModel.fromJson(Map<String, dynamic> json) {
//   //   return ProductsCardModel(
//   //     id: json['id'] as String?,
//   //     label: json['label'] == null
//   //         ? null
//   //         : Label.fromJson(json['label'] as Map<String, dynamic>),
//   //     backgroundImage: json['background_image'] as String?,
//   //     name: json['name'] as String?,
//   //     description: json['description'] as String?,
//   //     time: json['time'] as String?,
//   //     serviceImages: (json['Service_images'] as List<dynamic>?)
//   //         ?.map((e) => ServiceImage.fromJson(e as Map<String, dynamic>))
//   //         .toList(),
//   //     price: json['price'] as double?,
//   //     serviceOpinions: (json['ServiceOpinions'] as List<dynamic>?)
//   //         ?.map((e) => ServiceOpinion.fromJson(e as Map<String, dynamic>))
//   //         .toList(),
//   //   );
//   // }

//   // Map<String, dynamic> toJson() => {
//   //       'id': id,
//   //       'label': label?.toJson(),
//   //       'background_image': backgroundImage,
//   //       'name': name,
//   //       'description': description,
//   //       'time': time,
//   //       'Service_images': serviceImages?.map((e) => e.toJson()).toList(),
//   //       'price': price,
//   //       'ServiceOpinions': serviceOpinions?.map((e) => e.toJson()).toList(),
//   //     };

