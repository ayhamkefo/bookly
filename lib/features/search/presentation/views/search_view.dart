import 'package:bookly/core/utils/services_locater.dart';
import 'package:bookly/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/search_repo.dart';
import 'widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getit.get<SearchRepo>()),
      child: const Scaffold(
        body: SafeArea(child: SearchViewBody()),
      ),
    );
  }
}
