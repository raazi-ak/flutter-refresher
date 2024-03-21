import 'package:flutter/material.dart';

Container CategoryItem() {
  return Container(
    margin: EdgeInsets.all(8),
    padding: EdgeInsets.all(40),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
    ),
  );
}
