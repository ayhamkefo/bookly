import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/services_locater.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/views_modle/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views_modle/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/routers.dart';

void main() {
  setupLocatorServices();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getit.get<HomeRepo>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getit.get<HomeRepo>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: Routers.router,
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: kPramaryColor),
      ),
    );
  }
}
