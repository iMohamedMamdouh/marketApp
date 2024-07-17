import 'package:flutter/material.dart';
import 'package:session2/Constants.dart';
import 'package:session2/pages/market_page.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51.0,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MarketPage()));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        child: Text(
          text ?? '',
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}
