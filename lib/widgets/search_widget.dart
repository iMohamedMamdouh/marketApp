import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide.none,
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search',
        hintStyle: TextStyle(color: Color(0xFFBDBDBD)),
        filled: true,
        fillColor: Color(0xFFF6F6F6),
      ),
    );
  }
}
