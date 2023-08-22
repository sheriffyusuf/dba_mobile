import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 85,
          height: 102,
          padding: const EdgeInsets.all(4),
          decoration: ShapeDecoration(
            color: const Color(0xFF728DFF),
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        5.width
      ],
    );
  }
}
