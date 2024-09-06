import '../../../../gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:majestica_ds/majestica_ds.dart';

enum SpikeColorMode {
  primary,
  neutral,
  glossy,
}

class Spike extends StatelessWidget {
  final SpikeColorMode colorMode;

  final bool isLeft;

  final double? width;

  final Color? spikeColor;

  final double? height;

  const Spike({
    super.key,
    required this.colorMode,
    required this.isLeft,
    this.spikeColor,
    this.width,
    this.height,
  });

  const Spike.left({
    required this.colorMode,
    this.isLeft = true,
    this.spikeColor,
    super.key,
    this.width,
    this.height,
  });

  const Spike.right({
    required this.colorMode,
    this.isLeft = false,
    this.spikeColor,
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      colorFilter: ColorFilter.mode(
        spikeColor ?? color(context.mdsTheme.colors),
        BlendMode.srcIn,
      ),
      isLeft ? Assets.icons.spike.left : Assets.icons.spike.right,
      width: width ?? 24,
      height: height ?? 45,
    );
  }

  Color color(MDSColors colors) {
    return switch (colorMode) {
      SpikeColorMode.primary => colors.primaryHighContent,
      SpikeColorMode.neutral => colors.neutralMedContainer,
      SpikeColorMode.glossy => colors.allWhite,
    };
  }
}
