import 'package:bookly/constants.dart';
import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';
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

class SearchResultSection extends StatelessWidget {
  const SearchResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchISuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding),
                child: Text(
                  "Search Result",
                  style:
                      Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SearchResultListView(bookModel: state.bookMoodel)
            ],
          );
        } else if (state is SearchIFailure) {
          return CustomError(errorText: state.errorMessage);
        } else if (state is SearchLoading) {
          return const CustomLoading();
        } else if (state is SearchNotFound) {
          return Center(
              child: Text(
            state.message,
            style: Styles.textStyle20,
          ));
        }
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .35,
            ),
            const Text(
              'Search for a book category ',
              style: Styles.textStyle20,
            ),
          ],
        );
      },
    );
  }
}
