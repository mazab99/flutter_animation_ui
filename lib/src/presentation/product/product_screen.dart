import 'package:flutter/material.dart';

import '../../models/products_model.dart';
import '../../widgets/app_chip.dart';
import '../../widgets/glass_icon_button.dart';
import '../../widgets/scaleup_animation.dart';
import '../../widgets/translateup_animation.dart';

class ProductScreenDetails extends StatelessWidget {
  const ProductScreenDetails({super.key, required this.product});

  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Hero(
              tag: product.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.redAccent,
                        size: 50,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
