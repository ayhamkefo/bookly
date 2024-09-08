import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'search_result_sliver_list.dart';
import 'search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchTextField(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kPadding),
                child: Text(
                  "Search Result",
                  style: Styles.textStyle20,
                ),
              ),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ),
        SearchResullSliverList(),
      ],
    );
  }
}
