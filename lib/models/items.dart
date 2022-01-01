import 'package:harubom/models/generated/products_card_model/products_card_model.dart';

class ItemModel {
  ProductsCardModel? product;
  int? itemQty;
  bool? ordered;

  ItemModel({this.product, this.itemQty, this.ordered});

  ItemModel.fromJson(Map<String, dynamic> json) {
    product = json['product'] != null
        ? new ProductsCardModel.fromJson(json['product'])
        : null;
    itemQty = json['item_qty'];
    ordered = json['ordered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product?.toJson();
    }
    data['item_qty'] = this.itemQty;
    data['ordered'] = this.ordered;
    return data;
  }
}
