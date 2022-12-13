import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextInputType? inputType;
  final String label;
  final String prefix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLength;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final VoidCallback? voidCallback;
  final String? hintText;
  final bool? obscureText;

  const CustomTextFormField({
    Key? key,
    this.onChanged,
    this.inputType,
    required this.label,
    this.prefix = '',
    this.prefixIcon,
    this.suffixIcon,
    this.maxLength,
    this.focusNode,
    this.controller,
    this.voidCallback,
    this.hintText,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        cursorColor: Colors.teal,
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
          fillColor: Colors.white54,
          filled: true,
          hoverColor: Colors.white12,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          focusColor: Colors.teal,
          labelText: label,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.teal, fontSize: 18, fontWeight: FontWeight.bold),
          labelStyle: const TextStyle(
            color: Colors.teal,
            fontSize: 16,
            overflow: TextOverflow.fade,
            inherit: true,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal, width: 1.5),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange, width: 1.5),
          ),
          errorStyle: const TextStyle(
            color: Colors.deepOrange,
            letterSpacing: 1.0,
          ),
        ),
        // maxLength: maxLength,
        obscureText: obscureText ?? false,
        onTap: voidCallback,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$label ${"Field Required"}';
          }

          return null;
        },
        keyboardType: inputType ?? TextInputType.text,
      ),
    );
  }
}
