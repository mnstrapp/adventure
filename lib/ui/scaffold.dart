import 'package:flutter/material.dart';

class UiScaffold extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final bool showStatBar;
  final bool useSizedBox;
  final bool useSafeArea;
  final bool disableBackButton;

  const UiScaffold({
    super.key,
    required this.child,
    this.backgroundColor,
    this.showStatBar = true,
    this.useSizedBox = false,
    this.useSafeArea = false,
    this.disableBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          useSizedBox
              ? SizedBox(width: size.width, height: size.height, child: child)
              : useSafeArea
              ? SafeArea(child: child)
              : child,
        ],
      ),
    );
  }
}
