import 'package:flutter/material.dart';

class TextFormSearch extends StatelessWidget{
  const TextFormSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.yellow),borderRadius: BorderRadius.all(Radius.circular(20))),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green),borderRadius: BorderRadius.all(Radius.circular(20))),
          hintText: "Search",
          hintStyle: TextStyle(
            fontSize: 13,
          ),
          prefixIcon: Icon(
            Icons.search,
            size: 20,
          )),
    );
  }
}