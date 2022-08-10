import 'package:flutter/material.dart';

import '../constant/path_images.dart';

class ImageAnimal extends StatelessWidget {
  const ImageAnimal({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)))));
  }
}
