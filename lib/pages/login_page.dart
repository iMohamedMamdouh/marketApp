import 'package:flutter/material.dart';
import 'package:session2/Constants.dart';
import 'package:session2/widgets/custom_button.dart';
import 'package:session2/widgets/custom_form_textfield.dart';
import 'package:session2/widgets/title_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const TitleWidget(title: 'Login'),
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: Column(
              children: [
                CustomFormTextfield(
                  hintText: 'Email',
                ),
                CustomFormTextfield(
                  hintText: 'Password',
                  showSuffixButton: true,
                ),
                SizedBox(
                  height: 135,
                ),
                CustomButton(
                  text: 'Login',
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      'Forgot your password?',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
