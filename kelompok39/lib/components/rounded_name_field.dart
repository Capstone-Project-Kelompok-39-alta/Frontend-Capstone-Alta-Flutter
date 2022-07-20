import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kelompok39/components/text_field_container.dart';
import 'package:kelompok39/constants.dart';

class RoundedNameField extends StatelessWidget {
  final String hinttext;
  final ValueChanged<String> onChanged;
  const RoundedNameField({
    Key? key,
    required this.hinttext,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hinttext,
            icon:
                SvgPicture.asset('assets/icons/IconDark5Gray/Name=Profile.svg',color: cDark5,),
            border: InputBorder.none),
      ),
    );
  }
}
