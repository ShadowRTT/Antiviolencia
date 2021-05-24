import 'package:antiviolencia/components/input_container.dart';
import 'package:antiviolencia/constants.dart';
import 'package:flutter/material.dart';

class RoundedInput extends StatelessWidget {
  const RoundedInput({
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
      decoration: InputDecoration(
          icon: Icon(icon, color: kPrimaryColor),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
