import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: 177,
          width: 110,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(8),
              //   child: Image.network(
              //     'https://fastly.picsum.photos/id/53/110/177.jpg?hmac=Q1Jz0RU-bSDMd1j9jT3-Z4VLcrURl1OTEHv4W_jfrVs',
              //     height: 110,
              //     width: 110,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              const Text(
                'Item #1 Name Goes Here',
              ),
              const Text(
                '\$19.99',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
