import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.borderRadius});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(backgroundColor),
              shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: borderRadius))),
          child: Text(
            '19.99€',
            style: Styles.textStyle20.copyWith(color: textColor),
          )),
    );
  }
}
