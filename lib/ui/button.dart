import 'package:flutter/material.dart';

import '../theme.dart';

class UiButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color? color;
  final Color? backgroundColor;
  final Size? size;
  final double? fontSize;
  final VoidCallback onPressed;

  const UiButton({
    super.key,
    required this.text,
    this.icon,
    this.color,
    this.backgroundColor,
    this.size,
    this.fontSize,
    required this.onPressed,
  });

  static UiButton secondary({
    required String text,
    final IconData? icon,
    Size? size,
    required VoidCallback onPressed,
  }) {
    final color = theme.colorScheme.onPrimaryContainer;
    final backgroundColor = theme.colorScheme.primaryContainer;
    return UiButton(
      text: text,
      icon: icon,
      color: color,
      backgroundColor: backgroundColor,
      size: size ?? const Size(100, 40),
      fontSize: 14,
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? theme.colorScheme.onPrimary;

    return FilledButton.icon(
      style: FilledButton.styleFrom(
        minimumSize: size ?? const Size(200, 56),
        backgroundColor: backgroundColor,
        foregroundColor: color,
      ),
      onPressed: onPressed,
      label: Text(
        text,
        style: theme.textTheme.bodyMedium?.copyWith(
          color: color,
          fontSize: fontSize ?? 20,
        ),
      ),
      icon: icon != null ? Icon(icon) : null,
    );
  }
}
