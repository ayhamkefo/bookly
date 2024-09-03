import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomListviewIteam extends StatelessWidget {
  const CustomListviewIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.red,
          image: DecorationImage(
              image: AssetImage(AssetsData.testImage), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
