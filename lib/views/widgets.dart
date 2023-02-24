import 'package:flutter/material.dart';

Text myTextWidget(label, [size = 20.0, color = Colors.deepOrange]) {
  return Text(
    label,
    style: TextStyle(
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: size,
    )
  );
}

Widget myButtonWidget(label, action) {
  return ElevatedButton(onPressed: action, child: Text(label));
}