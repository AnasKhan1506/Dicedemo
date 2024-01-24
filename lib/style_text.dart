import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hello World!",
        style: TextStyle(
          fontSize: 27,
          color: Colors.white,
        ),
      ),
    );
  }
}
