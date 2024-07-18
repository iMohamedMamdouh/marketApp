import 'package:flutter/material.dart';
import 'package:session2/Constants.dart';

class RowfeedListview extends StatelessWidget {
  const RowfeedListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 27),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Header',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          '8m ago',
                          style: TextStyle(color: kHintColor),
                        ),
                      ],
                    ),
                    Text(
                      'He\'ll want to use your yacht, and I don\'t\nwant this thing smelling like fish.',
                    ),
                    SizedBox(height: 8),
                    Divider(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
