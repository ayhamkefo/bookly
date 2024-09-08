import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
      child: TextField(
        style: Styles.textStyle18.copyWith(color: Colors.black),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          hintText: "Search Text...",
          hintStyle: Styles.textStyle16.copyWith(color: Colors.black87),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black87,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
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
