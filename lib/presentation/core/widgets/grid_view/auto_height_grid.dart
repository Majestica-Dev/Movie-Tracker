import 'package:flutter/material.dart';

part 'grid_row.dart';

class ResponsiveGridView extends StatelessWidget {
  final IndexedWidgetBuilder builder;
  final int itemCount;
  final double itemWidth;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final EdgeInsets? padding;

  const ResponsiveGridView({
    required this.itemCount,
    required this.builder,
    required this.crossAxisCount,
    required this.itemWidth,
    this.mainAxisSpacing = 0,
    this.shrinkWrap = false,
    this.padding,
    this.physics,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: padding,
      shrinkWrap: shrinkWrap,
      physics: physics,
      itemBuilder: (ctx, rowIndex) {
        return _GridRow(
          rowIndex: rowIndex,
          builder: builder,
          itemCount: itemCount,
          itemWidth: itemWidth,
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: mainAxisSpacing,
        );
      },
      itemCount: _columnLength(),
    );
  }

  int _columnLength() {
    if (itemCount % crossAxisCount == 0) {
      return itemCount ~/ crossAxisCount;
    } else {
      return (itemCount ~/ crossAxisCount) + 1;
    }
  }
}
