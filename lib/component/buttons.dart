import 'package:flutter/material.dart';

Widget buildButton(
    String buttonText, BuildContext context, void Function()? onTap,
    {bool colors = true, bool large = true}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
          color: colors ? const Color(0xFFB4D8FB) : const Color(0xFF00C6AA),
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      width: large
          ? MediaQuery.of(context).size.width / 3 - 15
          : MediaQuery.of(context).size.width - 20,
      height: large ? 60 : 80,
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: large ? 30 : 60,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}
