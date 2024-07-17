import 'package:flutter/material.dart';
import 'package:session2/Constants.dart';

class CustomFormTextfield extends StatefulWidget {
  const CustomFormTextfield(
      {super.key, this.hintText, this.showSuffixButton = false});

  final String? hintText;
  final bool showSuffixButton;

  @override
  _CustomFormTextfieldState createState() => _CustomFormTextfieldState();
}

class _CustomFormTextfieldState extends State<CustomFormTextfield> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          obscureText: widget.showSuffixButton ? _isObscured : false,
          validator: (data) => data!.isEmpty ? 'Field cannot be empty' : null,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: kSecondaryColor),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: kSecondaryColor),
            ),
            filled: true,
            fillColor: const Color(0xFFF6F6F6),
            label: Text(widget.hintText ?? ''),
            labelStyle: const TextStyle(color: kHintColor),
            suffix: widget.showSuffixButton
                ? TextButton(
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                    child: Text(
                      _isObscured ? 'Show' : 'Hide',
                      style:
                          const TextStyle(color: kPrimaryColor, fontSize: 16),
                    ),
                  )
                : null,
            suffixStyle: const TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
