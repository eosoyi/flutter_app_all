import 'package:flutter/material.dart';

class ConstrainUtils extends StatefulWidget {
  Widget child;

  ConstrainUtils({
    required this.child,
    super.key
  });

  @override
  State<ConstrainUtils> createState() => _ConstrainUtilsState();
}

class _ConstrainUtilsState extends State<ConstrainUtils> {
  double minWidth = 100.0;
  double maxWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    minWidth = size.width - 150;
    maxWidth = size.width - 50;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: minWidth,
        maxWidth: maxWidth
      ),
      child: widget.child,
    );
  }
}



