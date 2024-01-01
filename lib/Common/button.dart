import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? text;
  final EdgeInsetsGeometry? btnMargin;
  final double? btnHeight;
  final String? leadingImage;

  const CustomeButton({
    super.key,
    this.onPressed,
    this.text,
    this.btnHeight,
    this.leadingImage,
  }) : btnMargin = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight ?? 56,
      width: double.infinity,
      margin: btnMargin,
      child: ElevatedButton(
        onPressed: onPressed,
        child: btnChild(),
      ),
    );
  }

  btnChild() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (leadingImage != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Image.asset(leadingImage!),
          ),
        if (text != null)
          Text(
            text!,
            style: const TextStyle(fontSize: 18),
          ),
      ],
    );
  }
}
