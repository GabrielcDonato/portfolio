import 'package:flutter/material.dart';
import 'package:portfolio/widgets/card_widget.dart';

class SectionMovieWidget extends StatelessWidget {
  final String sectionTitle;
  final int cardsQuantity;

  const SectionMovieWidget({
    super.key,
    required this.sectionTitle,
    required this.cardsQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sectionTitle,
                  style: const TextStyle(fontSize: 24, color: Colors.white),
                ),
                const SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: cardsQuantity,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.0),
                        child: CardWidget(),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
