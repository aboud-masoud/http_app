import 'package:flutter/material.dart';

class LaithField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  const LaithField(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextField(
        obscureText: hintText == "password",
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal)),
            hintText: hintText,
            prefixIcon: Icon(
              icon,
              color: Colors.red,
            ),
            suffixIcon: InkWell(
              child: const Icon(Icons.close),
              onTap: () {
                controller.clear();
              },
            )),
        controller: controller,
      ),
    );
  }
}
