import 'package:flutter/material.dart';

Widget formBuilder(String label, String hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          letterSpacing: 1.2,
          fontSize: 14,
          color: Color(0xff10403B),
        ),
      ),
      const SizedBox(height: 10),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
        decoration: BoxDecoration(
          color: Color(0xff8AA6A3),
          borderRadius: BorderRadius.circular(7),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            isDense: true,
            hintText: hintText,
          ),
        ),
      ),
    ],
  );
}

// the button
Widget primaryButton(
  String label,
  Function onTap,
  bool bordered,
  context,
) {
  return ElevatedButton(
    style: ButtonStyle(
      shadowColor: MaterialStateProperty.all(
        bordered ? Colors.white : Color(0xff8AA6A3),
      ),
      elevation: MaterialStateProperty.all(10),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      side: MaterialStateProperty.all(
        const BorderSide(
          color: Color(0xffBFBFBF),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(
        bordered ? Colors.white : Theme.of(context).primaryColor,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 110,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 20,
          letterSpacing: 1.3,
          fontWeight: FontWeight.w600,
          color: bordered ? Colors.black : Colors.white,
        ),
      ),
    ),
    onPressed: onTap as VoidCallback,
  );
}
