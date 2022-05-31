import 'package:flutter/material.dart';

class CoffeType extends StatelessWidget {
  final String coffe_Type;
  final bool isSelected;
  final VoidCallback onTap;
  CoffeType({
    required this.coffe_Type,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          coffe_Type,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
