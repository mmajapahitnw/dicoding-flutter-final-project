import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String name;

  const CoffeeType({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.orange,
        ),
      ),
    );
  }
}
