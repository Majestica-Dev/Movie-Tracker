part of 'auto_height_grid.dart';

class _GridRow extends StatelessWidget {
  final IndexedWidgetBuilder builder;
  final int itemCount;
  final int crossAxisCount;
  final double itemWidth;
  final double mainAxisSpacing;
  final int rowIndex;

  const _GridRow({
    required this.rowIndex,
    required this.builder,
    required this.itemCount,
    required this.itemWidth,
    required this.crossAxisCount,
    required this.mainAxisSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: (rowIndex == 0) ? 0 : mainAxisSpacing,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          (crossAxisCount * 2) - 1,
          (index) {
            final rowNum = index + 1;
            if (rowNum % 2 == 0) {
              return const SizedBox();
            }
            final rowItemIndex = ((rowNum + 1) ~/ 2) - 1;

            final itemIndex = (rowIndex * crossAxisCount) + rowItemIndex;

            if (itemIndex > itemCount - 1) {
              return SizedBox(width: itemWidth);
            }
            return builder(context, itemIndex);
          },
        ),
      ),
    );
  }
}
