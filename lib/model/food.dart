class Food {
  String name;
  String price;
  String imageSrc;
  String rating;

  Food({
    required this.name,
    required this.price,
    required this.imageSrc,
    required this.rating,
  });

  String get _name => name;

  String get _price => price;

  String get _imageSrc => imageSrc;

  String get _rating => rating;
}

List<Food> sushiFood = [
  // salmon sushi
  Food(
    name: "Salmon Sushi",
    price: "21.00",
    imageSrc: "assets/images/salmon_sushi.png",
    rating: "4.7",
  ),
  // tuna sushi
  Food(
    name: "Tuna",
    price: "23.00",
    imageSrc: "assets/images/tuna.png",
    rating: "4.5",
  ),
];

List<Food> rollsFood = [
  // salmon sushi
  Food(
    name: "Original Roll",
    price: "21.00",
    imageSrc: "assets/images/roll_1.png",
    rating: "4.7",
  ),
  // tuna sushi
  Food(
    name: "Wasabi Roll",
    price: "23.00",
    imageSrc: "assets/images/roll_2.png",
    rating: "4.5",
  ),
  Food(
    name: "Rice Roll",
    price: "21.00",
    imageSrc: "assets/images/roll_3.png",
    rating: "4.7",
  ),
  // tuna sushi
  Food(
    name: "Tuna Wasabi Roll",
    price: "23.00",
    imageSrc: "assets/images/roll_4.png",
    rating: "4.5",
  ),
  Food(
    name: "Tuna Roll",
    price: "21.00",
    imageSrc: "assets/images/roll_5.png",
    rating: "4.7",
  ),
  // tuna sushi
  Food(
    name: "Tuna Rice Roll",
    price: "23.00",
    imageSrc: "assets/images/roll_6.png",
    rating: "4.5",
  ),
];
