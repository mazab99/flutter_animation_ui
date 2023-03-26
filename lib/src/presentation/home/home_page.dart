import 'package:flutter/material.dart';
import 'package:flutter_animation_ui/src/presentation/home/widgets/all_products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;
  double top = -300;
  double left = -300;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onPanUpdate: (details) {
          var topPos = top + (details.delta.dy * 1.5);
          var leftPos = left + (details.delta.dx * 1.5);
          //set the state
          setState(() {
            top = topPos;
            left = leftPos;
          });
        },
        child: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 700),
                curve: Curves.easeOut,
                top: top,
                left: left,
                child: const AllProducts(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
