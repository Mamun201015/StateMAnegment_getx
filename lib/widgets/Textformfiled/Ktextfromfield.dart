import 'package:flutter/material.dart';

class KTextFromField extends StatelessWidget {
  const KTextFromField(
      {super.key,
      this.isPassword = false,
      this.iconData,
      this.hintext,
      this.label,
      this.suffixIcon,
      this.validator,
      this.prefixIcon,
      this.readOnly = false,
      this.fillcolor = Colors.grey});
  final bool isPassword;
  final IconData? iconData;
  final hintext;
  final label;
  final suffixIcon;
  final validator;
  final prefixIcon;
  final readOnly;
  final fillcolor;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      obscureText: isPassword,
      validator: validator,
      decoration: InputDecoration(
          fillColor: fillcolor,
          hintText: hintext,
          label: label,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.grey, width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.grey, width: 3),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: Colors.grey, width: 3)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: Colors.red, width: 3))),
    );
  }
}
