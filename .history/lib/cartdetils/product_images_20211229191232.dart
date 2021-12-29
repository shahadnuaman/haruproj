import 'package:flutter/material.dart';
import 'package:harubom/models/Product.dart';

import '../../../constants.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedSize = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.product.id.toString(),
              child: (widget.product.image.contains('http'))
                  ? Image.network(
                      widget.product.image,
                      width: 300,
                      height: 200,
                    )
                  : Image.asset(
                      widget.product.image,
                      width: 300,
                      height: 200,
                    ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.sizes.length,
                (index) => buildSmallProductPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Color(0xffE5E5E5),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedSize == index ? 1 : 0)),
        ),
        child: Text(
          widget.product.sizes[index],
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'cairo',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xffA0054F)),
        ),

        //child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
