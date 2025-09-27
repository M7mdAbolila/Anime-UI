// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/character1.png
  AssetGenImage get character1 =>
      const AssetGenImage('assets/images/character1.png');

  /// File path: assets/images/cover1.png
  AssetGenImage get cover1 => const AssetGenImage('assets/images/cover1.png');

  /// File path: assets/images/cover2.png
  AssetGenImage get cover2 => const AssetGenImage('assets/images/cover2.png');

  /// File path: assets/images/cover3.png
  AssetGenImage get cover3 => const AssetGenImage('assets/images/cover3.png');

  /// File path: assets/images/details-cover.png
  AssetGenImage get detailsCover =>
      const AssetGenImage('assets/images/details-cover.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    character1,
    cover1,
    cover2,
    cover3,
    detailsCover,
  ];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/HandsClapping.svg
  SvgGenImage get handsClapping =>
      const SvgGenImage('assets/svgs/HandsClapping.svg');

  /// File path: assets/svgs/Rocket Boy 1.svg
  SvgGenImage get rocketBoy1 =>
      const SvgGenImage('assets/svgs/Rocket Boy 1.svg');

  /// File path: assets/svgs/Star Submit Review.svg
  SvgGenImage get starSubmitReview =>
      const SvgGenImage('assets/svgs/Star Submit Review.svg');

  /// File path: assets/svgs/anmi-name.svg
  SvgGenImage get anmiName => const SvgGenImage('assets/svgs/anmi-name.svg');

  /// File path: assets/svgs/background-star.svg
  SvgGenImage get backgroundStar =>
      const SvgGenImage('assets/svgs/background-star.svg');

  /// File path: assets/svgs/books-nav.svg
  SvgGenImage get booksNav => const SvgGenImage('assets/svgs/books-nav.svg');

  /// File path: assets/svgs/circle-nav.svg
  SvgGenImage get circleNav => const SvgGenImage('assets/svgs/circle-nav.svg');

  /// File path: assets/svgs/home-nav.svg
  SvgGenImage get homeNav => const SvgGenImage('assets/svgs/home-nav.svg');

  /// File path: assets/svgs/movie-icon.svg
  SvgGenImage get movieIcon => const SvgGenImage('assets/svgs/movie-icon.svg');

  /// File path: assets/svgs/perview.svg
  SvgGenImage get perview => const SvgGenImage('assets/svgs/perview.svg');

  /// File path: assets/svgs/plan_icon.svg
  SvgGenImage get planIcon => const SvgGenImage('assets/svgs/plan_icon.svg');

  /// File path: assets/svgs/search-nav.svg
  SvgGenImage get searchNav => const SvgGenImage('assets/svgs/search-nav.svg');

  /// File path: assets/svgs/setting-nav.svg
  SvgGenImage get settingNav =>
      const SvgGenImage('assets/svgs/setting-nav.svg');

  /// File path: assets/svgs/views.svg
  SvgGenImage get views => const SvgGenImage('assets/svgs/views.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    handsClapping,
    rocketBoy1,
    starSubmitReview,
    anmiName,
    backgroundStar,
    booksNav,
    circleNav,
    homeNav,
    movieIcon,
    perview,
    planIcon,
    searchNav,
    settingNav,
    views,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
