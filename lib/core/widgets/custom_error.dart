import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomError extends StatelessWidget {
  final String errorText;
  const CustomError({super.key, required this.errorText});
  @override
  Widget build(BuildContext context) {
    return Text(
      errorText,
      style: Styles.textStyle18,
      textAlign: TextAlign.center,
    );
  }
}
