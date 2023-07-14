import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double height;
  final double width;
  final double? radius;
  final Color? bgColor;
  final BorderSide? side;
  final TextStyle? txtStyle;
  const MyButton(
      {Key? key,
        required this.title,
        required this.onTap,
        required this.height,
        required this.width,
        this.bgColor,
        this.txtStyle,
        this.radius,
        this.side,}
      )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: bgColor ?? Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 25),
                  side: side ?? BorderSide())),
          onPressed: onTap,
          child: Text(
            title,
            style: txtStyle,
          )),
    );
  }
}