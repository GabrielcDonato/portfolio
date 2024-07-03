import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
        color: Colors.white,
      ),
      width: MediaQuery.sizeOf(context).width / 5,
      height: MediaQuery.sizeOf(context).height * 0.15,
    );
  }
}
