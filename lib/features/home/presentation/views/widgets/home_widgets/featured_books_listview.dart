import 'package:bookly/core/utils/routers.dart';
import 'package:bookly/features/home/presentation/views_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/widgets/custom_error.dart';
import '../../../../../../core/widgets/custom_loading.dart';
import '../../../../../../core/widgets/custom_books_limage.dart';

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
                  child: InkWell(
                    onTap: () => GoRouter.of(context).push(
                        Routers.kBookDetailsView,
                        extra: state.books[index]),
                    child: CustomBooksImage(
                      imageUrl:
                          state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailuer) {
          return CustomError(
            errorText: state.errorMessage,
          );
        }
        return const CustomLoading();
      },
    );
  }
}
