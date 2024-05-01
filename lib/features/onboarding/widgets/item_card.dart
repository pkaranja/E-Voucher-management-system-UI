import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const Spacer(),
        const Spacer(),
        const Spacer(),
        const Spacer(),
        SizedBox(
          height: h * 0.50,
          width: w,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Lottie.asset(
              item.lottie,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.1,
                child: Text(
                  item.title,
                  textScaleFactor: 2.3,
                  maxLines: 2,
                  style: const TextStyle(
                      fontFamily: "QrooFont",
                      fontWeight: FontWeight.bold,
                      height: 1,
                      letterSpacing: 1.1,
                      wordSpacing: 5),
                ),
              ),
              SizedBox(height: h * 0.01),
              SizedBox(
                  height: h * 0.14,
                  child: Text(
                    item.description,
                    style: const TextStyle(
                      fontFamily: "QrooFont",
                      fontSize: 20,
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
