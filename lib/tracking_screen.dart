import 'package:flutter/material.dart';
import 'package:practice_ui/utils/common_widgets.dart';

class TrackingScreen extends StatefulWidget {
  const TrackingScreen({super.key});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {

  List<Map<String, String>> orderData = [
    {"type" : "Order Date",  "value" : "30-06-2020"},
    {"type" : "Deliver Boy Name",  "value" : "Rajesh K"},
    {"Phone" : "Deliver Boy Name",  "value" : "+ 91 9568 856 152"},
  ];

  Color buttonColor =  Color.fromRGBO(0, 217, 174, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        CommonWidgets.columnLayout(
          children: [
            CommonWidgets.addSizedBox(
              height: 40,
            ),
            CommonWidgets.givePadding(
              left: 20, right: 20,
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
                    text: 'Tracking',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  CommonWidgets.addSizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: CommonWidgets.addAssetImage(
                          imgPath: "assets/images/ic_map.png",
                          fit: BoxFit.cover
                      ),
                    ),
                    Positioned(
                      top: 240,
                      child: CommonWidgets.addContainer(
                        height: 363,
                        width:  MediaQuery.of(context).size.width,
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                        child: CommonWidgets.givePadding(
                          right: 20, left: 20, top: 20, bottom: 20,
                          child: CommonWidgets.columnLayout(
                              children: [
                                CommonWidgets.writeText(
                                  text: "ETA : 10 Minutes",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                  color: Colors.grey
                                ),
                                CommonWidgets.givePadding(
                                  top: 10,
                                  child: CommonWidgets.writeText(
                                      text: "Order ID : 65329845",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),
                                ),
                                CommonWidgets.addListViewBuilder(
                                  physics: NeverScrollableScrollPhysics(),
                                    dataList: orderData,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800
                                ),
                                CommonWidgets.customButton(
                                  hint: "CHECK ORDER STATUS",
                                  buttonColor: buttonColor,
                                  onTap:  () {
                                    setState(() {
                                      buttonColor = Color.fromRGBO(0, 217, 174, 1);
                                    });
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (context) => ));
                                  },
                                )
                              ]
                          ),
                        ),
                      ),
                    ),

                  ]
                ),
              ),

          ],
        ),
    );
  }
}
