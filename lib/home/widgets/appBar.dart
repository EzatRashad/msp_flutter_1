import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: Colors.purple,
            height: 50,
            child: const Text(
              "الاخبار",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 23,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 1,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            color: Colors.purple,
            height: 50,
            child: const Text(
              "الاخبار",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 23,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
