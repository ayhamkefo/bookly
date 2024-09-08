import 'package:go_router/go_router.dart';

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
        builder: (context, state) => const HomeVeiw(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BooksDeatailsVeiw(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
