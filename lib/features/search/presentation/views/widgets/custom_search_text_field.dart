import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutlineBorder(),
          focusedBorder: buildOutlineBorder(),
          hintText: 'Search',
          suffixIcon: const Icon(
            Icons.search,
            size: 20,
          )),
    );
  }

  OutlineInputBorder buildOutlineBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        borderSide: BorderSide(
          color: Colors.white,
        ));
  }
}
