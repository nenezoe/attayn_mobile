import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/helper_classes.dart';
import '../utils/helpers.dart';

class AttaynTextField extends StatelessWidget {
  const AttaynTextField({
    Key? key,
    this.label,
    this.initialValue,
    this.onChanged,
    this.bottomMargin = 10,
    this.maxLength,
    this.maxLines = 1,
    this.disableFocus = false,
    this.icon,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.controller,
    this.obscureText = false,
    this.textInputType,
    this.validator,
    this.textCapitalization = TextCapitalization.none,
    this.hintText,
    this.hintStyle,
  }) : super(key: key);

  final String? label;
  final String? initialValue;
  final Function(String v)? onChanged;
  final int? maxLength;
  final int maxLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final ImageIcon? icon;
  final VoidCallback? onTap;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final bool disableFocus;
  final double bottomMargin;
  final bool obscureText;
  final String? Function(String? v)? validator;
  final TextCapitalization textCapitalization;
  final String? hintText;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          //title
          Text(
            label!,
            style: Helpers.textStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 27, 27, 27),
            ),
          ),

          // const SizedBox(
          //   height: 6,
          // ),
        ],

        //text field
        Container(
          height: maxLines > 1 ? null : 50,
          margin: EdgeInsets.only(bottom: bottomMargin),
          child: TextFormField(
            controller: controller,
            keyboardType: textInputType ??
                (maxLines > 1 ? TextInputType.multiline : TextInputType.text),
            initialValue: initialValue,
            onChanged: onChanged,
            maxLength: maxLength,
            validator: validator,
            textCapitalization: textCapitalization,
            maxLengthEnforcement:
                maxLength != null ? MaxLengthEnforcement.enforced : null,
            maxLines: maxLines,
            focusNode: disableFocus ? AlwaysDisabledFocusNode() : null,
            textAlignVertical: TextAlignVertical.center,
            obscureText: obscureText,
            decoration: InputDecoration(
              // border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              // border: OutlineInputBorder(
              //   borderSide: const BorderSide(
              //     color: AppColors.INPUT_FIELD_COLOR,
              //   ),
              //   borderRadius: BorderRadius.circular(18),
              // ),
              // enabledBorder: OutlineInputBorder(
              // borderSide: const BorderSide(
              //   color: AppColors.INPUT_FIELD_COLOR,
              // ),
              // borderRadius: BorderRadius.circular(18),
              // ),
              // disabledBorder: OutlineInputBorder(
              //   borderSide: const BorderSide(
              //     color: AppColors.INPUT_FIELD_COLOR,
              //   ),
              //   borderRadius: BorderRadius.circular(18),
              // ),
              // filled: true,
              // fillColor: AppColors.INPUT_FIELD_COLOR,
              hintText: hintText,
              hintStyle: hintStyle,
            ),
            onTap: onTap,
          ),
        )
      ],
    );
  }
}
