/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesAuthGen get auth => const $AssetsImagesAuthGen();
  $AssetsImagesHomeGen get home => const $AssetsImagesHomeGen();

  /// File path: assets/images/nikeLogo.svg
  String get nikeLogo => 'assets/images/nikeLogo.svg';

  $AssetsImagesOnboardingGen get onboarding =>
      const $AssetsImagesOnboardingGen();

  /// List of all assets
  List<String> get values => [nikeLogo];
}

class $AssetsImagesAuthGen {
  const $AssetsImagesAuthGen();

  /// File path: assets/images/auth/email.png
  AssetGenImage get email =>
      const AssetGenImage('assets/images/auth/email.png');

  /// List of all assets
  List<AssetGenImage> get values => [email];
}

class $AssetsImagesHomeGen {
  const $AssetsImagesHomeGen();

  /// File path: assets/images/home/appbaricon.svg
  String get appbaricon => 'assets/images/home/appbaricon.svg';

  /// File path: assets/images/home/bottomnav.svg
  String get bottomnav => 'assets/images/home/bottomnav.svg';

  /// File path: assets/images/home/cartlogo.svg
  String get cartlogo => 'assets/images/home/cartlogo.svg';

  /// File path: assets/images/home/favoriteicon.svg
  String get favoriteicon => 'assets/images/home/favoriteicon.svg';

  /// File path: assets/images/home/favoriteiconfilled.svg
  String get favoriteiconfilled => 'assets/images/home/favoriteiconfilled.svg';

  /// File path: assets/images/home/homeicon.svg
  String get homeicon => 'assets/images/home/homeicon.svg';

  /// File path: assets/images/home/nikeshoes1.png
  AssetGenImage get nikeshoes1 =>
      const AssetGenImage('assets/images/home/nikeshoes1.png');

  /// File path: assets/images/home/notificationicon.svg
  String get notificationicon => 'assets/images/home/notificationicon.svg';

  /// File path: assets/images/home/profileicon.svg
  String get profileicon => 'assets/images/home/profileicon.svg';

  /// File path: assets/images/home/searchicon.svg
  String get searchicon => 'assets/images/home/searchicon.svg';

  /// File path: assets/images/home/shoesBanner.png
  AssetGenImage get shoesBanner =>
      const AssetGenImage('assets/images/home/shoesBanner.png');

  /// File path: assets/images/home/shoesBannerSVG.svg
  String get shoesBannerSVG => 'assets/images/home/shoesBannerSVG.svg';

  /// File path: assets/images/home/sortingicon.svg
  String get sortingicon => 'assets/images/home/sortingicon.svg';

  /// List of all assets
  List<dynamic> get values => [
        appbaricon,
        bottomnav,
        cartlogo,
        favoriteicon,
        favoriteiconfilled,
        homeicon,
        nikeshoes1,
        notificationicon,
        profileicon,
        searchicon,
        shoesBanner,
        shoesBannerSVG,
        sortingicon
      ];
}

class $AssetsImagesOnboardingGen {
  const $AssetsImagesOnboardingGen();

  /// File path: assets/images/onboarding/darkNikeLogo.svg
  String get darkNikeLogo => 'assets/images/onboarding/darkNikeLogo.svg';

  /// File path: assets/images/onboarding/highlights.svg
  String get highlights => 'assets/images/onboarding/highlights.svg';

  /// File path: assets/images/onboarding/onboarding1.png
  AssetGenImage get onboarding1 =>
      const AssetGenImage('assets/images/onboarding/onboarding1.png');

  /// File path: assets/images/onboarding/onboarding2.png
  AssetGenImage get onboarding2 =>
      const AssetGenImage('assets/images/onboarding/onboarding2.png');

  /// File path: assets/images/onboarding/onboarding2highligh1.png
  AssetGenImage get onboarding2highligh1Png =>
      const AssetGenImage('assets/images/onboarding/onboarding2highligh1.png');

  /// File path: assets/images/onboarding/onboarding2highligh1.svg
  String get onboarding2highligh1Svg =>
      'assets/images/onboarding/onboarding2highligh1.svg';

  /// File path: assets/images/onboarding/onboarding2shadow.png
  AssetGenImage get onboarding2shadow =>
      const AssetGenImage('assets/images/onboarding/onboarding2shadow.png');

  /// File path: assets/images/onboarding/onboarding3.png
  AssetGenImage get onboarding3 =>
      const AssetGenImage('assets/images/onboarding/onboarding3.png');

  /// File path: assets/images/onboarding/onboarding3highlight.png
  AssetGenImage get onboarding3highlight =>
      const AssetGenImage('assets/images/onboarding/onboarding3highlight.png');

  /// File path: assets/images/onboarding/smileface.png
  AssetGenImage get smileface =>
      const AssetGenImage('assets/images/onboarding/smileface.png');

  /// File path: assets/images/onboarding/textHighlight1.svg
  String get textHighlight1 => 'assets/images/onboarding/textHighlight1.svg';

  /// File path: assets/images/onboarding/textHightlight2.svg
  String get textHightlight2 => 'assets/images/onboarding/textHightlight2.svg';

  /// List of all assets
  List<dynamic> get values => [
        darkNikeLogo,
        highlights,
        onboarding1,
        onboarding2,
        onboarding2highligh1Png,
        onboarding2highligh1Svg,
        onboarding2shadow,
        onboarding3,
        onboarding3highlight,
        smileface,
        textHighlight1,
        textHightlight2
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
