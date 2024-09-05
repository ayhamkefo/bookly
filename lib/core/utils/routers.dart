import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/splach/presentation/views/splach_view.dart';

abstract class Routers {
  static const kHomeView = "/homeView";
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
    ],
  );
}
