import 'package:flutter/material.dart';

import 'best_seller_listview_iteam.dart';

class BestSellerListveiw extends StatelessWidget {
  const BestSellerListveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 13),
            child: BestSellerListVeiwIteam(),
          );
        });
  }
}
