import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? text;
  final EdgeInsetsGeometry? btnMargin;
  final double? btnHeight;

  const CustomeButton({
    super.key,
    this.onPressed,
    this.text,
    this.btnHeight,
  }) : btnMargin = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight ?? 56,
      width: double.infinity,
      margin: btnMargin,
      child: ElevatedButton(
        onPressed: onPressed,
        child: text != null ? Text(text!) : null,
      ),
    );
  }
}
