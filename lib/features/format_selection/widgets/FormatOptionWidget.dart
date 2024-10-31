// lib/features/format_selection/widgets/FormatOptionWidget.dart

import 'package:flutter/material.dart';
import '../../../core/constants/color_constants.dart';

class FormatOptionWidget extends StatelessWidget {
  final String format;
  final bool isSelected;
  final VoidCallback onTap;

  const FormatOptionWidget({
    Key? key,
    required this.format,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          color: isSelected ? ColorConstants.buttonColor : Colors.grey[700],
          border: Border.all(color: ColorConstants.buttonColor),
          borderRadius: BorderRadius.circular(30),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.6),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 0),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Text(
            format,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
