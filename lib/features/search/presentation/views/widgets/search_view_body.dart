import 'package:flutter/material.dart';

import 'search_result_section.dart';
import 'search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SearchTextField(),
        ),
        SliverToBoxAdapter(
          child: SearchResultSection(),
        )
      ],
    );
  }
}
