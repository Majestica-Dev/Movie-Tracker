import 'dart:ui';

import 'package:majestica_ds/majestica_ds.dart';

abstract final class MTColors {
  static final MDSColors colors = MDSColors.dark(
    background: const Color(0xff171623),
    surface: const Color(0xff26253B),
    highContainerContent: const Color(0xff26253B),
    primary: const Color(0xff6B66DA),
    neutral: const Color(0xffF3F2FA),
  );

  static MDSColors glossy = MDSColors.dark(
    background: const Color(0xff000000),
    surface: const Color(0x1F000000),
    highContainerContent: const Color(0xff000000),
    primary: const Color(0xffFFFFFF),
    neutral: const Color(0xffFFFFFF),
  );
}
