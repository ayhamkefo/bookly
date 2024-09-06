import 'package:bookly/core/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'best_seller_book_listview_details.dart';
import 'best_seller_listview_image.dart';

class BestSellerListVeiwIteam extends StatelessWidget {
  const BestSellerListVeiwIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(Routers.kBookDetailsView),
      child: const Row(
        children: [
          BestSellerListViewImage(),
          SizedBox(
            width: 30,
          ),
          BestSellerBookDetails()
        ],
      ),
    );
  }
}
