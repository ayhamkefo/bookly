import 'package:bookly/core/utils/services_locater.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/views_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/books_details_widgets/books_details_view_body.dart';

class BooksDeatailsVeiw extends StatelessWidget {
  const BooksDeatailsVeiw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SimilarBooksCubit(
          getit.get<HomeRepo>(),
        ),
        child: const BooksDetailsViewBody(),
      ),
    );
  }
}
