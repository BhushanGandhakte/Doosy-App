import 'package:flutter/material.dart';

class CommonWidgets {
  static Widget columnLayout({
    required List<Widget> children,
    CrossAxisAlignment? crossAxisAlignment,
    MainAxisAlignment? mainAxisAlignment,
  }) {
    return Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: children,
    );
  }

  static Widget rowLayout({
    required List<Widget> children,
    MainAxisAlignment? mainAxisAlignment,
  }) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
      children: children,
    );
  }

  static Widget givePadding({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
    required Widget child,
  }) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: child,
    );
  }

  static Widget writeText({
    required String text,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  static Widget addSizedBox({double? height, double? width}) {
    return SizedBox(height: height, width: width);
  }

  static Widget addContainer({
    required Widget child,
    double? height,
    double? width,
    Color? color,
    BorderRadiusGeometry? borderRadius,
    List<BoxShadow>? boxShadow,
  }) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: color,
        boxShadow: boxShadow,
      ),
      child: child,
    );
  }

  static Widget addListViewBuilder({
    required List dataList,
    double? fontSize,
    FontWeight? fontWeight,
    ScrollPhysics? physics,
  }) {
    return ListView.builder(
      shrinkWrap: false,
      physics: physics,
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        final item = dataList[index];
        return columnLayout(
          children: [
            rowLayout(
              children: [
                writeText(text: item.values.first, fontSize: fontSize),
                writeText(
                  text: item.values.last,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
              ],
            ),
            addSizedBox(height: 10),
            Divider(),
          ],
        );
      },
    );
  }

  static Widget addGridViewBuilder({
    required SliverGridDelegate gridDelegate,
    required List data,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: gridDelegate,
      itemCount: data.length,
      itemBuilder: (context, index) {
        final item = data[index];
        return Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(blurRadius: 4, color: Colors.grey)],
              ),
              child: CommonWidgets.givePadding(
                left: 20,
                top: 20,
                right: 20,
                bottom: 20,
                child: Image.asset(item.values.last, height: 50, width: 80),
              ),
            ),
            writeText(text: item.values.first, fontWeight: FontWeight.w700),
          ],
        );
      },
    );
  }

  static Widget addAssetImage({
    required String imgPath,
    double? height,
    double? width,
    Color? color,
    double? scale,
    BoxFit? fit,
    bool? isAntiAlias,
  }) {
    return Image.asset(
      imgPath,
      height: height,
      width: width,
      color: color,
      scale: scale,
      fit: fit,
      isAntiAlias: false,
    );
  }

  static Widget customButton({
    required void Function()? onTap,
    required Color? buttonColor,
    required String? hint,
  }) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: 48,
        width: 315,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            hint ?? 'NA',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
