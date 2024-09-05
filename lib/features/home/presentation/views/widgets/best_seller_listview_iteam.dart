import 'package:flutter/material.dart';

import 'best_seller_book_details.dart';
import 'best_seller_listveiw_image.dart';

class BestSellerListVeiwIteam extends StatelessWidget {
  const BestSellerListVeiwIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BestSellerListVeiwImage(),
        SizedBox(
          width: 30,
        ),
        BestSellerBookDetails()
      ],
    );
  }
}
