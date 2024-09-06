import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets_data.dart';

class CusotmAppBar extends StatelessWidget {
  const CusotmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 30),
      child: Row(
        children: [
          SvgPicture.asset(
            AssetsData.logo,
            width: 100,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: kAppBarIconSize,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
