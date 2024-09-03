import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/assets_data.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          AssetsData.logo,
          width: MediaQuery.of(context).size.width * .7,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Read Free Book",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 23),
        ),
      ],
    );
  }
}
