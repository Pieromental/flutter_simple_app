import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? callBack;
  final Color? backColor;
  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    required this.callBack, this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      backgroundColor: backColor ,
      enableFeedback: true,
      shape: const StadiumBorder(),
      onPressed: callBack,
      child: Icon(icon),
    );
  }
}
