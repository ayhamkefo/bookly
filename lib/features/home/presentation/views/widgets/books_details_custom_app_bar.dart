import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class BooksDetailsCustomAppBar extends StatelessWidget {
  const BooksDetailsCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
                size: 30,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: kAppBarIconSize,
            ),
          ),
        ],
      ),
    );
  }
}
