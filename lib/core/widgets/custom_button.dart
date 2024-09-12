import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.borderRadius,
      required this.text,
      this.privewLink});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final String text;
  final String? privewLink;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {
            _launchUrl(privewLink ?? '');
          },
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(backgroundColor),
              shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(borderRadius: borderRadius))),
          child: Text(
            text,
            style: Styles.textStyle20
                .copyWith(color: textColor, fontWeight: FontWeight.bold),
          )),
    );
  }
}

Future<void> _launchUrl(url) async {
  print(url);
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(url);
  }
}
