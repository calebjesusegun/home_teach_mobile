import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NavbarTopContainer extends StatelessWidget {
  const NavbarTopContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.asset1,
  }) : super(key: key);

  final double width;
  final double height;
  final String asset1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * .28,
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: new DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/asset_images_png/$asset1.png',
          ),
        ),
      ),
      child: Center(
        child: Container(
          width: width * 0.29,
          height: height * 0.5,
          child: Image.asset( 
                'assets/images/HomeTeach Logo2.png',
              ),
        ),
      ),
    );
  }
}
