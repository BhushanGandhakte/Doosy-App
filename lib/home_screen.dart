
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget{

  const Home({super.key});

  @override
  State createState() {
    return HomeScreen();
  }
}

class HomeScreen extends State<Home>{

  int _currentIndex = 0;

  List<Services> serviceData = [
    Services('assets/images/ic_send_package.png', "Send Packages"),
    Services('assets/images/ic_send_package.png', "Pick From Shop")
  ];

  List<Map<String, dynamic>> nestedList = [
    {
      "title" : "Category",
      "categoryData" :  [
        Categories('assets/category_images/grocery_logo.png', 'Grocery'),
        Categories('assets/category_images/pizza_logo.png', 'Restaurant'),
        Categories('assets/category_images/fruit_logo.png', 'Fruits/Veg'),
        Categories('assets/category_images/gift_logo.png', 'Gifts'),
      ],
    },
    {
      "title" : "Newly Registered on Doosy",
      "newlyAddedData" : [
        NewlyAdded('assets/newlyadded_images/dabur_logo.png', 'Dabur'),
        NewlyAdded('assets/newlyadded_images/parachut_logo.png', 'Parachute'),
        NewlyAdded('assets/newlyadded_images/indiagate_logo.png', 'India Gate'),
        NewlyAdded('assets/newlyadded_images/colgate_logo.png', 'Colgate'),
      ]
    }
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            children: [
              Stack(
                 children: [
                   SizedBox(
                     height: 200,
                     width: double.infinity,
                   ),
                   Container(
                     height: 150,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       color:  Color.fromRGBO(0, 217, 174, 1),
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15),)
                     ),
                   ),
                   Positioned(
                     top: 40,
                     left: 20,
                       child: Image.asset('assets/images/ic_drawer.png')
                   ),
                   Positioned(
                     top: 40,
                       left: 130,
                       child: Text(
                           "Your Location",
                         style: TextStyle(
                           fontSize: 14,
                           color: Colors.white,
                         ),
                       )
                   ),
                   Positioned(
                       top: 60,
                       left: 130,
                       child: Row(
                         children: [
                           Text(
                             "Mumbai",
                             style: TextStyle(
                               fontSize: 18,
                               color: Colors.white,
                             ),
                           ),
                           Icon(
                               Icons.keyboard_arrow_down_rounded,
                             size: 24,
                             color: Colors.white,
                           )
                         ],
                       )
                   ),
                   Positioned(
                     top: 40,
                     right: 20,
                       child: Image.asset('assets/images/ic_cart.png'),
                   ),
                   Positioned(
                       top: 110,
                       left: 20,
                       child: SizedBox(
                         height: 50,
                         width: 320,
                         child: SearchBar(
                           backgroundColor: WidgetStatePropertyAll(Colors.white),
                           leading: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Icon(
                                 Icons.search,
                               color: Colors.grey,
                               size: 30,
                             ),
                           ),
                           hintText: "Search here",
                           hintStyle: WidgetStatePropertyAll(TextStyle(
                             color: Colors.grey,
                           )),
                           surfaceTintColor: WidgetStatePropertyAll(Colors.white),

                         ),
                       ),
                   ),
        
                 ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CarouselSlider(
                      items: [
                        Stack(
                          children: [
                            Image.asset(
                                'assets/carousel_images/ic_carousel.png',
                              height: 137,
                              width: 313,
                            ),
                            Positioned(
                              top: 30,
                              left: 20,
                              child: SizedBox(
                                height: 80,
                                width: 120,
                                child: Text(
                                    "Flat 20% Off On All Orders",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 90,
                                left: 12,
                                child: Container(
                                  height: 30,
                                  width: 128,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(colors: [Color.fromRGBO(0, 217, 174, 1), Colors.white])
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Row(
                                      children: [
                                        Text(
                                            "Check Them Out",
                                          style: TextStyle(
                                            fontSize: 12.5,
                                          ),
                                        ),
                                        Icon(
                                            Icons.arrow_right,
                                          size: 16.5,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'assets/carousel_images/ic_carousel.png',
                              height: 137,
                              width: 313,
                            ),
                            Positioned(
                              top: 30,
                              left: 20,
                              child: SizedBox(
                                height: 80,
                                width: 120,
                                child: Text(
                                  "Flat 20% Off On All Orders",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 90,
                                left: 12,
                                child: Container(
                                  height: 30,
                                  width: 128,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(colors: [Color.fromRGBO(0, 217, 174, 1), Colors.white])
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Check Them Out",
                                          style: TextStyle(
                                            fontSize: 12.5,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right,
                                          size: 16.5,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            )
                          ],
                        )
                      ],
                    options: CarouselOptions(
                      height: 140,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason){
                        setState(() {
                          _currentIndex = index;
                        });
                      }
                    ),
                  ),
                  SmoothPageIndicator(
                    effect: WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotColor:  Color.fromRGBO(0, 217, 174, 1),
        
                    ),
                    controller: PageController(
                      initialPage: _currentIndex,
                    ),
                    count: 2,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 0),
                child: SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: serviceData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final serviceDataObj = serviceData[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 158,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 2,
                              )
                            ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                  serviceDataObj.imageData,
                                height: 30,
                                width: 30,
                              ),
                              SizedBox(
                                height: 50,
                                width: 66,
                                child: Text(
                                  serviceDataObj.strServiceName,
                                  style: TextStyle(
                                     fontWeight: FontWeight.bold
                                  ),
                                  //textAlign: TextAlign.center,
                                ),
                              ),
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 24,
                                color:  Color.fromRGBO(0, 217, 174, 1),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
        
              ListView.builder(
                shrinkWrap: true,
                itemCount: nestedList.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int listIndex) {
                  final listObj = nestedList[listIndex];
                  return Column(
                    children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                listObj.values.first,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {  },
                                child: Text(
                                  "View All",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      SizedBox(
                        height: 140,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: listObj.values.last.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            final innerListObj = listObj.values.last;

                            final item = innerListObj[index];

                            return Padding(
                              padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 8),
                              child: Column(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 2,
                                          )
                                        ]
                                    ),
                                    child: Image.asset(
                                      item.imgPath,
                                     scale: 2,
                                    ),
                                  ),
                                  Text(item.categoryName),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              )
            ],
        ),
      ),


    );
  }
}

class Services{
  String imageData;
  String strServiceName;
  
  Services(this.imageData, this.strServiceName);
   
}

class Categories{
  String imgPath;
  String categoryName;

  Categories(this.imgPath, this.categoryName);

}

class NewlyAdded{
  String imgPath;
  String categoryName;

  NewlyAdded(this.imgPath, this.categoryName);

}