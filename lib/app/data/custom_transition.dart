import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSlideTransition extends CustomTransition {

  @override
  Widget buildTransition(BuildContext context, Curve? curve, Alignment? alignment, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    // TODO: implement buildTransition
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 1), // From bottom to top
        end: const Offset(0, 0),
      ).animate(animation),
      child: child,
    );
  }
}

class CustomZoomTransition extends CustomTransition {

  @override
  Widget buildTransition(BuildContext context, Curve? curve, Alignment? alignment, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    // TODO: implement buildTransition
    // Get the passed position
    Offset? startPosition = Get.arguments[0] as Offset?;
    Alignment startAlignment = startPosition != null
        ? Alignment((startPosition.dx / Get.width)  , (startPosition.dy / Get.height)  )
        : Alignment.center;

    return ScaleTransition(
      scale: Tween<double>(begin: 0.1, end: 1.0).animate(animation), // Zoom effect
      alignment: startAlignment, // Start from the item's position
      child: child,
    );
  }
}