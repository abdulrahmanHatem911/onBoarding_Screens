import 'package:flutter/material.dart';

Widget buildBoardingItem(model) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image(
            image: AssetImage('${model.image}'),
          ),
        ),
        const SizedBox(height: 30.0),
        Text(
          '${model.title}',
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15.0),
        Text(
          '${model.description}',
          style: const TextStyle(
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 30.0),
      ],
    ),
  );
}
