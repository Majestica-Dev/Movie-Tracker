import 'package:flutter/widgets.dart';
import 'package:majestica_ds/icons/icons.dart';
import 'package:majestica_ds/majestica_ds.dart';

class BlFridatFeaturesList extends StatelessWidget {
  const BlFridatFeaturesList({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.mdsTheme;

    return Column(
      children: [
        Row(
          children: [
            const PhosphorIcon(
              PhosphorIconsFill.checkCircle,
              size: 24,
              color: Color(0xff9397AB),
            ),
            const SizedBox(width: 12),
            Text(
              'Unlimited movie picks',
              style: t.textTheme.bodyMBold.copyWith(
                color: const Color(0xff9397AB),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const PhosphorIcon(
              PhosphorIconsFill.checkCircle,
              size: 24,
              color: Color(0xff9397AB),
            ),
            const SizedBox(width: 12),
            Text(
              'Full AI power',
              style: t.textTheme.bodyMBold.copyWith(
                color: const Color(0xff9397AB),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const PhosphorIcon(
              PhosphorIconsFill.checkCircle,
              size: 24,
              color: Color(0xff9397AB),
            ),
            const SizedBox(width: 12),
            Text(
              'Unlimited tracking',
              style: t.textTheme.bodyMBold.copyWith(
                color: const Color(0xff9397AB),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const PhosphorIcon(
              PhosphorIconsFill.checkCircle,
              size: 24,
              color: Color(0xff9397AB),
            ),
            const SizedBox(width: 12),
            Text(
              'Handpicked for you',
              style: t.textTheme.bodyMBold.copyWith(
                color: const Color(0xff9397AB),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const PhosphorIcon(
              PhosphorIconsFill.checkCircle,
              size: 24,
              color: Color(0xff9397AB),
            ),
            const SizedBox(width: 12),
            Text(
              'Relaxed watching',
              style: t.textTheme.bodyMBold.copyWith(
                color: const Color(0xff9397AB),
              ),
            )
          ],
        ),
      ],
    );
  }
}
