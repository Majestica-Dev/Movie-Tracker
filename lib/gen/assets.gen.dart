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

  /// File path: assets/icons/app_icon.png
  AssetGenImage get appIcon => const AssetGenImage('assets/icons/app_icon.png');

  /// Directory path: assets/icons/spike
  $AssetsIconsSpikeGen get spike => const $AssetsIconsSpikeGen();

  /// List of all assets
  List<AssetGenImage> get values => [appIcon];
}

class $AssetsIntroGen {
  const $AssetsIntroGen();

  /// File path: assets/intro/background.jpg
  AssetGenImage get background =>
      const AssetGenImage('assets/intro/background.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [background];
}

class $AssetsLottiesGen {
  const $AssetsLottiesGen();

  /// File path: assets/lotties/canfeti.json
  String get canfeti => 'assets/lotties/canfeti.json';

  /// File path: assets/lotties/majic_ball.json
  String get majicBall => 'assets/lotties/majic_ball.json';

  /// List of all assets
  List<String> get values => [canfeti, majicBall];
}

class $AssetsOnboardingGen {
  const $AssetsOnboardingGen();

  /// Directory path: assets/onboarding/icons
  $AssetsOnboardingIconsGen get icons => const $AssetsOnboardingIconsGen();

  /// Directory path: assets/onboarding/images
  $AssetsOnboardingImagesGen get images => const $AssetsOnboardingImagesGen();
}

class $AssetsIconsSpikeGen {
  const $AssetsIconsSpikeGen();

  /// File path: assets/icons/spike/left.svg
  String get left => 'assets/icons/spike/left.svg';

  /// File path: assets/icons/spike/right.svg
  String get right => 'assets/icons/spike/right.svg';

  /// List of all assets
  List<String> get values => [left, right];
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

class $AssetsOnboardingImagesGen {
  const $AssetsOnboardingImagesGen();

  /// File path: assets/onboarding/images/extra_page_header_card.png
  AssetGenImage get extraPageHeaderCard => const AssetGenImage(
      'assets/onboarding/images/extra_page_header_card.png');

  /// File path: assets/onboarding/images/extra_page_logos_1.svg
  String get extraPageLogos1 =>
      'assets/onboarding/images/extra_page_logos_1.svg';

  /// File path: assets/onboarding/images/extra_page_logos_2.svg
  String get extraPageLogos2 =>
      'assets/onboarding/images/extra_page_logos_2.svg';

  /// List of all assets
  List<dynamic> get values =>
      [extraPageHeaderCard, extraPageLogos1, extraPageLogos2];
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
