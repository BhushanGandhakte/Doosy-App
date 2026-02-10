import 'package:flutter/material.dart';
import 'package:practice_ui/utils/common_widgets.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {

  List<Map<String, dynamic>> myOrderData = [
    {
      "imgPath" : "assets/my_order_images/ic_delight_cafe.png",
      "title" : "Delight Cafe",
      "Order ID" : "2658746",
      "Order Date" : "25-06-2020",
      "Order Status" : "Placed",
      "Order Time" : "10:30 AM"
    },
    {
      "imgPath" : "assets/my_order_images/ic_burger_knight.png",
      "title" : "Burger Knight",
      "Order ID" : "2658746",
      "Order Date" : "25-06-2020",
      "Order Status" : "Canceled",
      "Order Time" : ""
    },
    {
      "imgPath" : "assets/my_order_images/ic_breakfast_daily.png",
      "title" : "Breakfast Daily",
      "Order ID" : "2658746",
      "Order Date" : "25-06-2020",
      "Order Status" : "Delivered",
      "Order Time" : ""
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CommonWidgets.givePadding(
        top: 40, left: 20, right: 20,
        child: CommonWidgets.columnLayout(
            children: [
              CommonWidgets.addAssetImage(
                imgPath: 'assets/images/ic_drawer.png',
                color: Colors.black,
              ),
              CommonWidgets.addSizedBox(
                height: 20,
              ),
              CommonWidgets.writeText(
                text: "My Orders",
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              CommonWidgets.addSizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: myOrderData.length,
                  itemBuilder: (context, index){
                    final item = myOrderData[index];
                    return CommonWidgets.givePadding(
                      bottom: 20,
                      child: CommonWidgets.addContainer(
                        height: 102,
                          width: 343,
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              offset: Offset(1, 3)
                            )
                          ],

                          child: CommonWidgets.givePadding(
                            top: 10, left: 10, right: 10, bottom: 10,
                            child: CommonWidgets.rowLayout(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CommonWidgets.addContainer(
                                  borderRadius: BorderRadius.circular(15),
                                  height: 72,
                                  width: 72,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2,
                                      offset: Offset(1, 2)
                                    )
                                  ],
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(15),
                                    child: CommonWidgets.addAssetImage(
                                      imgPath:   item["imgPath"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                CommonWidgets.addSizedBox(
                                  width: 10
                                ),
                                CommonWidgets.columnLayout(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    CommonWidgets.writeText(
                                        text: item["title"],
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                    ),
                                    RichText(
                                          text: TextSpan(
                                            text: "Order ID: ",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w200,
                                                color: Colors.black
                                            ),
                                          children: [
                                            TextSpan(
                                              text: item["Order ID"],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                              )
                                            )
                                          ]
                                        )
                                    ),
                                    // CommonWidgets.rowLayout(
                                    //   children: [
                                    //     CommonWidgets.writeText(
                                    //         text: "Order ID: ",
                                    //         fontSize: 12,
                                    //         fontWeight: FontWeight.w200
                                    //     ),
                                    //     CommonWidgets.writeText(
                                    //         text: item["Order ID"],
                                    //         fontSize: 12,
                                    //         fontWeight: FontWeight.w700
                                    //     ),
                                    //   ],
                                    // ),
                                    CommonWidgets.rowLayout(
                                      children: [
                                        CommonWidgets.writeText(
                                            text: "Order Date: ",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w200
                                        ),
                                        CommonWidgets.writeText(
                                            text: item["Order Date"],
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ],
                                    ),
                                  ]
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CommonWidgets.columnLayout(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Spacer(),
                                      CommonWidgets.writeText(
                                          text: item["Order Status"],
                                          color: item["Order Status"] == "Placed" ? Color.fromRGBO(0, 217, 174, 1) : item["Order Status"] == "Canceled" ? Colors.red : Colors.yellow
                                      ),
                                      if(item["Order Status"] == "Placed")
                                        CommonWidgets.rowLayout(
                                            children: [
                                              // CommonWidgets.writeText(
                                              //     text: "Time: ",
                                              //     fontSize: 11,
                                              //     fontWeight: FontWeight.w200
                                              // ),
                                              CommonWidgets.writeText(
                                                  text: item["Order Time"],
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w700,

                                              ),
                                            ]
                                        )

                                    ]
                                )
                              ],
                            ),
                          )
                      ),
                    );
                  }
              )
            ]
        ),
      ),
    );
  }
}
