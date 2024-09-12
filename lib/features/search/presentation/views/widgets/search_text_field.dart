import 'package:bookly/features/search/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
      child: TextField(
        controller: controller,
        onChanged: (value) => controller,
        onSubmitted: (searchText) {
          BlocProvider.of<SearchCubit>(context).fetchSearchedBooks(searchText);
        },
        style: Styles.textStyle18.copyWith(color: Colors.black),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          hintText: "Search Text...",
          hintStyle: Styles.textStyle16.copyWith(color: Colors.black87),
          prefixIcon: IconButton(
            onPressed: () {
              BlocProvider.of<SearchCubit>(context)
                  .fetchSearchedBooks(controller.text);
            },
            icon: const Icon(
              Icons.search,
              size: 25,
              color: Colors.black87,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () => controller.clear(),
            icon: const Icon(
              Icons.close_outlined,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}
