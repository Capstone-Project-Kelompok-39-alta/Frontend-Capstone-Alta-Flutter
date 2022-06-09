import 'package:flutter/material.dart';
import 'package:kelompok39/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: "enter your password",
          icon: Icon(
            Icons.lock_outline,
            color: Color.fromRGBO(170, 170, 170, 1),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color.fromRGBO(170, 170, 170, 1),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
