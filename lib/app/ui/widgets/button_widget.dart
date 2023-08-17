
import 'package:flutter/material.dart';

class MyIconButtonWidget extends StatelessWidget {
  MyIconButtonWidget({
    super.key,
    this.icon,
    this.onPressed,
  });

  IconData? icon ;
  void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size(50, 50),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
