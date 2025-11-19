import 'package:flutter/material.dart';

final baseTheme = ThemeData(useMaterial3: true);
final baseTextTheme = baseTheme.textTheme.apply(
  fontFamily: 'Pixelify',
  displayColor: Colors.white,
);

const primaryColor = Color(0xff00f0ff);

final theme = baseTheme.copyWith(
  colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff00f0ff)),
  textTheme: baseTextTheme,
  primaryColor: primaryColor,
  primaryColorDark: Color.lerp(primaryColor, Colors.black, 0.5),
  scaffoldBackgroundColor: primaryColor,
  appBarTheme: AppBarTheme(backgroundColor: primaryColor),
);

const tabletBreakpoint = 992;
const mobileBreakpoint = 768;
const smallMobileMinimumBreakpoint = 300;
const smallMobileMaximumBreakpoint = 420;
const largeMobileMinimumBreakpoint = 410;
const largeMobileMaximumBreakpoint = 480;
const foldableMinimumBreakpoint = 850;
const foldableMaximumBreakpoint = 900;
const tabletMinimumBreakpoint = 900;
const tabletMaximumBreakpoint = 1024;
const widescreenMinimumBreakpoint = 2560;
