import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const[
        Card(
          child: ListTile(),
        ),
        Card(
          child: ListTile(),
        ),
        Card(
          child: ListTile(),
        ),
      ],
    );
  }
}