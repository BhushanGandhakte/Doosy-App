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

    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: 20,
              ),

            ]
        ),
      ),
    );
  }
}
