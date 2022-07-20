import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kelompok39/components/text_field_container.dart';
import 'package:kelompok39/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            enabled: true,
            icon: SvgPicture.asset('assets/icons/IconDark5Gray/Name=Email.svg',
                color: cDark5),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
