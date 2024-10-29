import 'package:flutter/material.dart';

class LabelWithAsterisk extends StatelessWidget {
  final String labelText;
  final bool isRequired;

  const LabelWithAsterisk({
    super.key,
    required this.labelText,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          labelText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        if (isRequired)
          const Text(
            "*",
            style: TextStyle(color: Colors.red),
          ),
      ],
    );
  }
}
