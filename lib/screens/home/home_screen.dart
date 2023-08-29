import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushiman_app/components/button.dart';
import 'package:sushiman_app/components/food_tile.dart';
import 'package:sushiman_app/model/food.dart';
import 'package:sushiman_app/model/menu.dart';
import 'package:sushiman_app/screens/detail/food_details_screen.dart';
import 'package:sushiman_app/themes/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Menu? selectedMenu;

  // Set the initial selected category to the first category
  @override
  void initState() {
    super.initState();
    selectedMenu = categories.isNotEmpty ? categories[0] : null;
  }

  // navigate to food items details page
  void navigateToFoodDetail(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsScreen(
          food: selectedMenu!.food[index],
        ),
      ),
    );
  }

  void selectCategory(Menu menu) {
    setState(() {
      selectedMenu = menu;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.grey.shade800,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Raipur",
          style: GoogleFonts.poppins(
            color: Colors.grey.shade800,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.person,
              color: Colors.grey.shade800,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // promo banner
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // promo message
                      Text(
                        "Get 32% Promo",
                        style: GoogleFonts.playfairDisplay(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      // redeem button
                      MyButton(
                        onTap: () {},
                        text: "Buy Food",
                        paddingVertical: 10,
                        paddingHorizontal: 20,
                      )
                    ],
                  ),

                  // Image
                  Image.asset(
                    "assets/images/many_sushi.png",
                    height: 100,
                  )
                ],
              ),
            ),

            const SizedBox(height: 10),

            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search here",
                    hintStyle: GoogleFonts.poppins(),
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: Colors.grey.shade600,
                    ),
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.white),
                    //   borderRadius: BorderRadius.circular(25),
                    // ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Container(
              padding: const EdgeInsets.only(left: 25),
              height: MediaQuery.of(context).size.height / 19.5,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedMenu == categories[index];
                  var category = categories[index];

                  return menuTile(category, isSelected);
                },
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height / 3.6,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: selectedMenu?.food.length ?? 0,
                  itemBuilder: (context, index) {
                    Food food = selectedMenu!.food[index];
                    return FoodTile(
                      food: food,
                      onTap: () {
                        navigateToFoodDetail(index);
                      },
                    );
                  }),
            ),

            const SizedBox(
              height: 25,
            ),

            // popular food
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Popular Food",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Colors.grey.shade800,
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // image
                      Image.asset(
                        "assets/images/sushi_egg.png",
                        height: 60,
                      ),

                      const SizedBox(
                        width: 5,
                      ),

                      // name and price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // name
                          Text(
                            "Salmon Egg",
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const SizedBox(
                            height: 5,
                          ),

                          // price
                          Row(
                            children: [
                              Text(
                                "\$21.00",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 70,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    color: Colors.yellow[800],
                                  ),
                                  Text(
                                    "4.7",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey.shade700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey.shade500,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // menu tile
  GestureDetector menuTile(Menu category, bool isSelected) {
    return GestureDetector(
      onTap: () => selectCategory(category),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Image.asset(
              category.imageSrc,
              height: 23,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              category.name,
              style: GoogleFonts.poppins(
                color: isSelected ? primaryColor : Colors.grey.shade500,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
