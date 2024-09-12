import 'package:bookly/features/home/presentation/views_model/books_details_cubit/books_details_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/home/presentation/views/books_details_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splach/presentation/views/splach_view.dart';

abstract class Routers {
  static const kHomeView = "/homeView";
  static const kBookDetailsView = "/bookDetailsView";
  static const kSearchView = "/searchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeVeiw();
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) {
          final book = state.extra as BookModel;
          return BlocProvider(
            create: (context) => BooksDetailsCubit()..setBook(book),
            child: const BooksDeatailsVeiw(),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
