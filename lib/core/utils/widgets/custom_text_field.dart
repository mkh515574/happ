import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.iconData,
      this.onSaved,
      this.onChanged,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.labelText = "", this.onPressedIcon, this.suffixIcon});

  final String hintText;
  final int maxLines;
  final String labelText;
  final void Function()? onPressedIcon;
  final IconData? iconData , suffixIcon;
  final TextInputType keyboardType;
  final void Function(String?)? onSaved;
  final Function(String?)? onChanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      obscureText: obscureText,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Filed is required";
        } else {
          return null;
        }
      },
      cursorColor: kColor,

      maxLines: maxLines,
      keyboardType: keyboardType,
      decoration: InputDecoration(

           border: buildOutlineInputBorder(),
          // enabledBorder: buildOutlineInputBorder(),
           focusedBorder: buildOutlineInputBorder(color: kColor),
          prefixIcon: Icon(
            iconData,
            color: tColor,
          ),

          hintText: hintText,
          labelStyle: const TextStyle(
            color:tColor
          ),
          labelText: labelText,

          suffixIcon: IconButton(icon: Icon(suffixIcon,color: tColor,), onPressed: onPressedIcon,),
          hintStyle: const TextStyle(
            color: tColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          )),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white,));
  }
}
