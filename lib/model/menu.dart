import 'package:sushiman_app/model/food.dart';

class Menu {
  final String name;
  final List<Food> food;
  final String imageSrc;

  Menu(this.name, this.food, this.imageSrc);
}

List<Menu> categories = [
  Menu('Sushi', sushiFood, "assets/images/salmon_sushi.png"),
  Menu('Rolls', rollsFood, "assets/images/roll_1.png"),
  Menu('Eggs', eggFood, "assets/images/sushi_egg.png"),
  // Add more categories here
];