import 'package:flutter/material.dart';
import 'package:practice_ui/utils/common_widgets.dart';

class ServicesScreen extends StatefulWidget {

  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();

}

class _ServicesScreenState extends State<ServicesScreen> {

  List<Map<String, String>> categoryData = [
   {
     "title" : "Grocery",
     "imgPath" : "assets/category_images/grocery_logo.png"
   },
    {
      "title" : "Restaurant",
      "imgPath" : "assets/category_images/pizza_logo.png"
    },
    {
      "title" : "Fruits/Veg",
      "imgPath" : "assets/category_images/fruit_logo.png"
    },
    {
      "title" : "Gifts",
      "imgPath" : "assets/category_images/gift_logo.png"
    },
    {
      "title" : "Meat & Fish",
      "imgPath" : "assets/category_images/meat_fish_logo.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommonWidgets.givePadding(
          left: 20, top: 40, right: 20, bottom: 0,
          child : CommonWidgets.columnLayout(
            children: [
              CommonWidgets.addAssetImage(
                imgPath: 'assets/images/ic_drawer.png',
                color: Colors.black,
              ),
              CommonWidgets.addSizedBox(
                height: 20,
              ),
              CommonWidgets.writeText(
                text: "Services",
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              CommonWidgets.addSizedBox(
                height: 25,
              ),
              CommonWidgets.writeText(
                  text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna.",
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
              ),
              CommonWidgets.addSizedBox(
                height: 25,
              ),
              CommonWidgets.addGridViewBuilder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 110,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15,
                  ),
                  data: categoryData,
              ),
            ],
          ),
      ),
    );
  }
}
