import 'package:flutter/material.dart';

import '../models/products_model.dart';
import '../presentation/product/product_screen.dart';
import 'app_chip.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productModel,
  });

  final ProductsModel productModel;

  void goToProductDetalisScreen(BuildContext context, ProductsModel movie) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 800),
        reverseTransitionDuration: const Duration(milliseconds: 800),
        pageBuilder: (_, __, ___) => FadeTransition(
          opacity: __,
          child: ProductScreenDetails(product: movie),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToProductDetalisScreen(context, productModel),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 250,
        height: 430,
        child: Stack(
          children: [
            Hero(
              tag: productModel.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  productModel.image,
                  width: 300,
                  height: 533,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    productModel.name,
                    style: const TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(0, 1),
                          blurRadius: 10,
                        ),
                      ],
                      color: Colors.blue,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
