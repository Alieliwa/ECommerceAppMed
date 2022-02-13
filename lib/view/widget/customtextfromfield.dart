import 'package:flutter/material.dart';

import 'customtext.dart';
class CustomTextFromFeild extends StatelessWidget {
  const CustomTextFromFeild({Key? key,
    required this.text,
    required this.hinttext,
    // required this.onSave,
    // required this.validator,
  }) : super(key: key);
  final String text;
  final String hinttext;
  // final Function onSave;
  // final Function validator;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Column(
        children: [
          CustomText(
              text: text,
              fontSize: 14,
              color: Colors.grey.shade900),
          TextFormField(
            // onSaved: onSave(),
            // validator: validator(),
            decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: TextStyle(
              color: Colors.black,
            ),
              fillColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
