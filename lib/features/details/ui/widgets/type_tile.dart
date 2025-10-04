import 'package:flutter/material.dart';

class TypeTile extends StatelessWidget {
  const TypeTile({super.key, required this.type});

  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xff564b72).withAlpha(220),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(100),
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Text(
        type,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
