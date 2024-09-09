import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views_modle/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../custom_books_limage.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: CustomBooksImage(
                    imageUrl:
                        state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailuer) {
          return Text(
            state.errorMessage,
            style: Styles.textStyle18,
            textAlign: TextAlign.center,
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
