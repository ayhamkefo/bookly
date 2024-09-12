import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_button.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    this.previewLink,
  });
  final String? previewLink;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(12))),
        ),
        Expanded(
          child: CustomButton(
              privewLink: previewLink,
              text: 'Preview',
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
        ),
      ],
    );
  }
}
