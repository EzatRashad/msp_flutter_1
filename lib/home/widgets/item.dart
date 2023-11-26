// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;

  final String title;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image(
          image: AssetImage(widget.image),
          height: 180,
          width: 200,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5, bottom: 5),
          child: Container(
            width: 120,
            color: Colors.purple.withOpacity(.6),
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}
