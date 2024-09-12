import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/core/widgets/custom_loading.dart';
import 'package:bookly/features/home/presentation/views_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../constants.dart';
import '../../../../../../core/utils/routers.dart';
import '../../../../../../core/utils/styles.dart';
import '../custom_books_limage.dart';

class SimilarBooksSection extends StatefulWidget {
  const SimilarBooksSection({super.key});

  @override
  State<SimilarBooksSection> createState() => _SimilarBooksSectionState();
}

class _SimilarBooksSectionState extends State<SimilarBooksSection> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: Text(
            'You can also like',
            style: Styles.textStyle20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SimilarBooksListView(),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: InkWell(
                    onTap: () => GoRouter.of(context).push(
                        Routers.kBookDetailsView,
                        extra: state.books[index]),
                    child: CustomBooksImage(
                      imageUrl: state
                              .books[index].volumeInfo!.imageLinks?.thumbnail ??
                          '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomError(errorText: state.errorMessage);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
