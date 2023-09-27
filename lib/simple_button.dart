import 'package:flutter/material.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () {},
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16),
        child: Text(text),
      ),
    );
  }
}
