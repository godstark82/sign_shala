import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff456731),
      surfaceTint: Color(0xff456731),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc6eeaa),
      onPrimaryContainer: Color(0xff082100),
      secondary: Color(0xff55624c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd9e7ca),
      onSecondaryContainer: Color(0xff131f0d),
      tertiary: Color(0xff386666),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbbebeb),
      onTertiaryContainer: Color(0xff002020),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff8faf0),
      onSurface: Color(0xff191d16),
      onSurfaceVariant: Color(0xff43483e),
      outline: Color(0xff74796d),
      outlineVariant: Color(0xffc3c8bb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312b),
      inversePrimary: Color(0xffaad290),
      primaryFixed: Color(0xffc6eeaa),
      onPrimaryFixed: Color(0xff082100),
      primaryFixedDim: Color(0xffaad290),
      onPrimaryFixedVariant: Color(0xff2e4f1c),
      secondaryFixed: Color(0xffd9e7ca),
      onSecondaryFixed: Color(0xff131f0d),
      secondaryFixedDim: Color(0xffbdcbaf),
      onSecondaryFixedVariant: Color(0xff3e4a35),
      tertiaryFixed: Color(0xffbbebeb),
      onTertiaryFixed: Color(0xff002020),
      tertiaryFixedDim: Color(0xffa0cfcf),
      onTertiaryFixedVariant: Color(0xff1e4e4e),
      surfaceDim: Color(0xffd9dbd1),
      surfaceBright: Color(0xfff8faf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f5ea),
      surfaceContainer: Color(0xffedefe4),
      surfaceContainerHigh: Color(0xffe7e9df),
      surfaceContainerHighest: Color(0xffe1e4d9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2a4b18),
      surfaceTint: Color(0xff456731),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5b7e45),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3a4631),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6b7961),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff194a4a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f7c7c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8faf0),
      onSurface: Color(0xff191d16),
      onSurfaceVariant: Color(0xff3f443a),
      outline: Color(0xff5c6156),
      outlineVariant: Color(0xff777c71),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312b),
      inversePrimary: Color(0xffaad290),
      primaryFixed: Color(0xff5b7e45),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff43652f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6b7961),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff536049),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4f7c7c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff356364),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9dbd1),
      surfaceBright: Color(0xfff8faf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f5ea),
      surfaceContainer: Color(0xffedefe4),
      surfaceContainerHigh: Color(0xffe7e9df),
      surfaceContainerHighest: Color(0xffe1e4d9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0c2800),
      surfaceTint: Color(0xff456731),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2a4b18),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1a2513),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3a4631),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002728),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff194a4a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8faf0),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff21251d),
      outline: Color(0xff3f443a),
      outlineVariant: Color(0xff3f443a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312b),
      inversePrimary: Color(0xffcff8b3),
      primaryFixed: Color(0xff2a4b18),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff143403),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3a4631),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff24301d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff194a4a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003333),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9dbd1),
      surfaceBright: Color(0xfff8faf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f5ea),
      surfaceContainer: Color(0xffedefe4),
      surfaceContainerHigh: Color(0xffe7e9df),
      surfaceContainerHighest: Color(0xffe1e4d9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffaad290),
      surfaceTint: Color(0xffaad290),
      onPrimary: Color(0xff183806),
      primaryContainer: Color(0xff2e4f1c),
      onPrimaryContainer: Color(0xffc6eeaa),
      secondary: Color(0xffbdcbaf),
      onSecondary: Color(0xff283420),
      secondaryContainer: Color(0xff3e4a35),
      onSecondaryContainer: Color(0xffd9e7ca),
      tertiary: Color(0xffa0cfcf),
      onTertiary: Color(0xff003737),
      tertiaryContainer: Color(0xff1e4e4e),
      onTertiaryContainer: Color(0xffbbebeb),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff11140e),
      onSurface: Color(0xffe1e4d9),
      onSurfaceVariant: Color(0xffc3c8bb),
      outline: Color(0xff8d9286),
      outlineVariant: Color(0xff43483e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e4d9),
      inversePrimary: Color(0xff456731),
      primaryFixed: Color(0xffc6eeaa),
      onPrimaryFixed: Color(0xff082100),
      primaryFixedDim: Color(0xffaad290),
      onPrimaryFixedVariant: Color(0xff2e4f1c),
      secondaryFixed: Color(0xffd9e7ca),
      onSecondaryFixed: Color(0xff131f0d),
      secondaryFixedDim: Color(0xffbdcbaf),
      onSecondaryFixedVariant: Color(0xff3e4a35),
      tertiaryFixed: Color(0xffbbebeb),
      onTertiaryFixed: Color(0xff002020),
      tertiaryFixedDim: Color(0xffa0cfcf),
      onTertiaryFixedVariant: Color(0xff1e4e4e),
      surfaceDim: Color(0xff11140e),
      surfaceBright: Color(0xff373a33),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff191d16),
      surfaceContainer: Color(0xff1d211a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff32362f),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffaed694),
      surfaceTint: Color(0xffaad290),
      onPrimary: Color(0xff061b00),
      primaryContainer: Color(0xff769b5f),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc1cfb3),
      onSecondary: Color(0xff0e1908),
      secondaryContainer: Color(0xff87957c),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa4d3d3),
      onTertiary: Color(0xff001a1a),
      tertiaryContainer: Color(0xff6b9999),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff11140e),
      onSurface: Color(0xfffafcf1),
      onSurfaceVariant: Color(0xffc8ccbf),
      outline: Color(0xffa0a598),
      outlineVariant: Color(0xff808579),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e4d9),
      inversePrimary: Color(0xff2f501d),
      primaryFixed: Color(0xffc6eeaa),
      onPrimaryFixed: Color(0xff041500),
      primaryFixedDim: Color(0xffaad290),
      onPrimaryFixedVariant: Color(0xff1e3e0c),
      secondaryFixed: Color(0xffd9e7ca),
      onSecondaryFixed: Color(0xff091404),
      secondaryFixedDim: Color(0xffbdcbaf),
      onSecondaryFixedVariant: Color(0xff2e3a26),
      tertiaryFixed: Color(0xffbbebeb),
      onTertiaryFixed: Color(0xff001415),
      tertiaryFixedDim: Color(0xffa0cfcf),
      onTertiaryFixedVariant: Color(0xff073d3d),
      surfaceDim: Color(0xff11140e),
      surfaceBright: Color(0xff373a33),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff191d16),
      surfaceContainer: Color(0xff1d211a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff32362f),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff2ffe4),
      surfaceTint: Color(0xffaad290),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffaed694),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff2ffe4),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc1cfb3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffe9fffe),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa4d3d3),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff11140e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff8fdee),
      outline: Color(0xffc8ccbf),
      outlineVariant: Color(0xffc8ccbf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e4d9),
      inversePrimary: Color(0xff113102),
      primaryFixed: Color(0xffcaf3ae),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffaed694),
      onPrimaryFixedVariant: Color(0xff061b00),
      secondaryFixed: Color(0xffddeccf),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc1cfb3),
      onSecondaryFixedVariant: Color(0xff0e1908),
      tertiaryFixed: Color(0xffc0f0f0),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa4d3d3),
      onTertiaryFixedVariant: Color(0xff001a1a),
      surfaceDim: Color(0xff11140e),
      surfaceBright: Color(0xff373a33),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff191d16),
      surfaceContainer: Color(0xff1d211a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff32362f),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
