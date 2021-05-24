import 'package:antiviolencia/components/input_container.dart';
import 'package:antiviolencia/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedNumber extends StatelessWidget {
  const RoundedNumber({
    Key key,
    @required this.icon,
    @required this.hint,
  }) : super(key: key);

  final IconData icon;

  final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      cursorColor: kPrimaryColor,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          icon: Icon(icon, color: kPrimaryColor),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
