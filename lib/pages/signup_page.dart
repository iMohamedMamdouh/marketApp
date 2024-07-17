import 'package:flutter/material.dart';
import 'package:session2/Constants.dart';
import 'package:session2/pages/login_page.dart';
import 'package:session2/widgets/custom_button.dart';
import 'package:session2/widgets/custom_form_textfield.dart';
import 'package:session2/widgets/title_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Color(0xFFBDBDBD),
          ),
        ),
        title: const TitleWidget(title: 'SignUp'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginPage();
                  },
                ),
              );
            },
            child: const Text(
              'Login',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormTextfield(
                  hintText: 'Name',
                ),
                const CustomFormTextfield(
                  hintText: 'Email',
                ),
                const CustomFormTextfield(
                  hintText: 'Password',
                  showSuffixButton: true,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      activeColor: kPrimaryColor,
                      side: const BorderSide(color: kSecondaryColor),
                      onChanged: (data) {
                        isChecked = data;
                        setState(() {});
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Text(
                        'I would like to receive your newsletter and other\n promotional information.',
                        style: TextStyle(
                          color: Color(0xFF666666),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
                const CustomButton(
                  text: 'Sign Up',
                ),
                const Padding(
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
