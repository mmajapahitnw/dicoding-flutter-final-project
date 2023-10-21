import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  const CoffeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 24),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
