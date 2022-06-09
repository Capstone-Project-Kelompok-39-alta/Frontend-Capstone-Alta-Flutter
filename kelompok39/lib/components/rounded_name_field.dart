import 'package:flutter/material.dart';
import 'package:kelompok39/components/text_field_container.dart';

class RoundedNameField extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedNameField({
    Key? key,
    required this.hinttext,
    this.icon = Icons.person_outlined,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hinttext,
            icon: Icon(
              icon,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
