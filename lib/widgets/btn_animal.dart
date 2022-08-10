import 'package:flutter/material.dart';

class BtnAnimal extends StatelessWidget {
  const BtnAnimal({
    Key? key,
    required this.name,
    required this.onClick,
    this.color = Colors.indigo,
    required this.icon,
  }) : super(key: key);
  final String name;
  final Color color;
  final void Function() onClick;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: ElevatedButton.icon(
            onPressed: onClick,
            style: ElevatedButton.styleFrom(
              primary: color,
              onPrimary: Colors.white,
              padding: const EdgeInsets.only(left: 2),
              alignment: Alignment.centerLeft,
            ),
            label: Text(name),
            icon: Image(
              image: AssetImage(icon),
              width: 24,
            )),
      ),
    );
  }
}
