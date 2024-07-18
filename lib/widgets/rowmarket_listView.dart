import 'package:flutter/material.dart';
import 'package:session2/widgets/card_widget.dart';

class RowmarketListview extends StatelessWidget {
  const RowmarketListview({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: SizedBox(
            height: 177, // Set the height according to your requirement
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) => const MyCard(),
            ),
          ),
        ),
      ],
    );
  }
}
