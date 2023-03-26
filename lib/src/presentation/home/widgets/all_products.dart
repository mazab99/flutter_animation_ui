import 'dart:math';
import 'package:flutter/material.dart';
import '../../../models/products_model.dart';
import '../../../widgets/produst_item.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final columns = sqrt(products.length).toInt();
    return SizedBox(
      width: columns * 320,
      child: Wrap(
          spacing: 15,
          runSpacing: 250,
          children: List.generate(
            products.length,
            (index) => Transform.translate(
              offset: Offset(0, index.isEven ? 240 : 0),
              child: ProductItem(
                productModel: products[index],
              ),
            ),
          )),
    );
  }
}
