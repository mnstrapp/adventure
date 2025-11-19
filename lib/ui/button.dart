import 'package:flutter/material.dart';

class UiButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final VoidCallback onPressed;

  const UiButton({
    super.key,
    required this.text,
    this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      style: FilledButton.styleFrom(
        minimumSize: Size(200, 56),
      ),
      onPressed: onPressed,
      label: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(color: Colors.white),
      ),
      icon: icon != null ? Icon(icon) : null,
    );
  }
}
