import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kelompok39/components/text_field_container.dart';

import '../constants.dart';

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
        decoration: InputDecoration(
          hintText: "enter your password",
          icon: SvgPicture.asset('assets/icons/IconDark5Gray/Name=Lock.svg',
              color: cDark5),
          suffixIcon: SvgPicture.asset(
              'assets/icons/IconDark5Gray/Name=Eye Closed.svg',
              width: 16,
              height: 16,
              color: cDark5),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
