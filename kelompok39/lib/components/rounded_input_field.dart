import 'package:flutter/material.dart';
import 'package:kelompok39/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.email_outlined,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            enabled: true,
            icon: Icon(icon, color: Color.fromRGBO(170, 170, 170, 1)),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
