/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app_logo.png
  AssetGenImage get appLogo => const AssetGenImage('assets/icons/app_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [appLogo];
}

class $AssetsIntroGen {
  const $AssetsIntroGen();

  /// File path: assets/intro/app_icon.svg
  String get appIcon => 'assets/intro/app_icon.svg';

  /// File path: assets/intro/background.jpeg
  AssetGenImage get background =>
      const AssetGenImage('assets/intro/background.jpeg');

  /// List of all assets
  List<dynamic> get values => [appIcon, background];
}

class $AssetsLottiesGen {
  const $AssetsLottiesGen();

  /// File path: assets/lotties/majic_ball.json
  String get majicBall => 'assets/lotties/majic_ball.json';

  /// List of all assets
  List<String> get values => [majicBall];
}

class $AssetsOnboardingGen {
  const $AssetsOnboardingGen();

  /// Directory path: assets/onboarding/icons
  $AssetsOnboardingIconsGen get icons => const $AssetsOnboardingIconsGen();
}

class $AssetsOnboardingIconsGen {
  const $AssetsOnboardingIconsGen();

  /// File path: assets/onboarding/icons/clock.svg
  String get clock => 'assets/onboarding/icons/clock.svg';

  /// File path: assets/onboarding/icons/crying.svg
  String get crying => 'assets/onboarding/icons/crying.svg';

  /// File path: assets/onboarding/icons/film.svg
  String get film => 'assets/onboarding/icons/film.svg';

  /// List of all assets
  List<String> get values => [clock, crying, film];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsIntroGen intro = $AssetsIntroGen();
  static const $AssetsLottiesGen lotties = $AssetsLottiesGen();
  static const $AssetsOnboardingGen onboarding = $AssetsOnboardingGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
