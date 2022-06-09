import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kelompok39/components/text_field_container.dart';

class RoundedPhoneField extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedPhoneField({
    Key? key,
    required this.hinttext,
    this.icon = Icons.flag_outlined,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        keyboardType: TextInputType.phone,
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
