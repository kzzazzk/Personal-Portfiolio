import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final IconData iconData;

  const CustomIconButton({Key? key, required this.iconData}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1.5),
        ),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.transparent, // Text color
            shape: const CircleBorder(),
          ),
          child: Icon(widget.iconData),
        ),
      ),
    );
  }
}
