import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/widgets/custom_error.dart';
import '../../../../../../core/widgets/custom_loading.dart';
import '../../../views_modle/newest_books_cubit/newest_books_cubit.dart';
import 'newest_books_listview_iteam.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: NewestBooksListViewIteam(
                  book: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailuer) {
          CustomError(
            errorText: state.errorMessage,
          );
        }
        return const CustomLoading();
      },
    );
  }
}
