import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget
{
  Category({super.key, this.text, this.color, this.onTap});
  
  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        width: double.infinity,
        alignment: Alignment.centerLeft,
          child: Center(
            child: Text(
              text!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
      ),
    );
  }
}
