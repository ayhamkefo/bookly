import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/home/presentation/views_model/books_details_cubit/books_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/styles.dart';
import 'action_button.dart';
import '../book_rating.dart';
import 'books_details_custom_app_bar.dart';
import '../custom_books_limage.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return BlocBuilder<BooksDetailsCubit, BooksDetailsState>(
      builder: (context, state) {
        if (state is BooksDetailsSelectBook) {
          return Column(
            children: [
              const BooksDetailsCustomAppBar(),
              Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * .25, vertical: kPadding),
                  child: CustomBooksImage(
                      imageUrl:
                          state.bookModel.volumeInfo!.imageLinks!.thumbnail!)),
              Text(
                state.bookModel.volumeInfo!.title!,
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                state.bookModel.volumeInfo!.authors![0],
                style: Styles.textStyle20.copyWith(
                    fontStyle: FontStyle.italic, color: Colors.white54),
              ),
              const SizedBox(
                height: 17,
              ),
              BooksRating(
                mainAxisAlignment: MainAxisAlignment.center,
                bookRating: state.bookModel.volumeInfo!.averageRating ?? 0,
                ratingCount: state.bookModel.volumeInfo!.ratingsCount ?? 0,
              ),
              const SizedBox(
                height: 38,
              ),
              ActionButton(
                previewLink: state.bookModel.volumeInfo!.previewLink,
              ),
            ],
          );
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
