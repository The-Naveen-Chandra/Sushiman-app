import 'package:flutter/material.dart';
import 'package:sushiman_app/model/food.dart';

class FoodDetailsScreen extends StatefulWidget {
  final Food food;

  const FoodDetailsScreen({
    super.key,
    required this.food,
  });

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
