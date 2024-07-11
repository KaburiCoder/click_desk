import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundInput extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String? hintText;
  final TextAlign textAlign;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String obscuringCharacter;
  final bool? enabled;
  final bool readOnly;
  final int? maxLines;
  final int? maxLength;
  final double fontSize;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final IconData? prefixIcon;
  final Function(String value)? onChanged;
  final String? Function(String? value)? validator;
  const RoundInput({
    super.key,
    required this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.hintText,
    this.inputFormatters,
    this.textAlign = TextAlign.start,
    this.obscuringCharacter = '●',
    this.enabled,
    this.readOnly = false,
    this.maxLines = 1,
    this.maxLength,
    this.fontSize = 30,
    this.textInputAction,
    this.onChanged,
    this.focusNode,
    this.validator,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlign: textAlign,
      style: TextStyle(fontSize: fontSize),
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      readOnly: readOnly,
      enabled: enabled,
      maxLines: maxLines,
      maxLength: maxLength,
      focusNode: focusNode,
      textInputAction: textInputAction,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
      ),
    );
  }
}

class RoundTextInput extends StatelessWidget {
  final TextEditingController controller;
  final double maxWidth;
  final int? maxLines;
  final bool readOnly;
  final double fontSize;
  final TextInputAction? textInputAction;
  final String? hintText;
  final FocusNode? focusNode;
  final Function(String value)? onChanged;
  final String? Function(String? value)? validator;
  const RoundTextInput({
    super.key,
    required this.controller,
    this.maxWidth = 200,
    this.maxLines = 1,
    this.readOnly = false,
    this.fontSize = 30,
    this.textInputAction,
    this.onChanged,
    this.focusNode,
    this.validator,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: RoundInput(
        controller: controller,
        readOnly: readOnly,
        fontSize: fontSize,
        onChanged: onChanged,
        focusNode: focusNode,
        validator: validator,
        hintText: hintText,
        textInputAction: textInputAction,
        keyboardType: TextInputType.text,
        maxLines: maxLines,
      ),
    );
  }
}

class RoundNumInput extends StatelessWidget {
  final TextEditingController controller;
  final String obscuringCharacter;
  final int maxLength;
  final bool obscureText;
  final TextAlign textAlign;
  final double maxWidth;
  final bool? enabled;
  final bool readOnly;
  final double fontSize;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final Function(String value)? onChanged;
  final String? Function(String? value)? validator;
  const RoundNumInput({
    super.key,
    required this.controller,
    required this.maxLength,
    this.obscureText = false,
    this.obscuringCharacter = "●",
    this.textAlign = TextAlign.center,
    this.maxWidth = 200,
    this.enabled,
    this.readOnly = false,
    this.fontSize = 30,
    this.textInputAction,
    this.onChanged,
    this.focusNode,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: RoundInput(
        enabled: enabled,
        readOnly: readOnly,
        controller: controller,
        obscureText: obscureText,
        textAlign: textAlign,
        fontSize: fontSize,
        onChanged: onChanged,
        focusNode: focusNode,
        validator: validator,
        obscuringCharacter: obscuringCharacter,
        textInputAction: textInputAction,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(maxLength),
        ],
      ),
    );
  }
}
