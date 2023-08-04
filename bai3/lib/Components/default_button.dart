import 'package:flutter/material.dart';


class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15), backgroundColor: color,
        ),
        onPressed: press,
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
