import 'package:flutter/rendering.dart';

/// RenderShiftedBox is one of the many helper classes that extend RenderBox to make it easier to implement the box protocol.
/// https://medium.com/saugo360/flutters-rendering-engine-a-tutorial-part-1-e9eff68b825d
class RenderStingy extends RenderShiftedBox {
  RenderStingy() : super(null);

  /// you have to layout your child, and decide the offset at which you want to display it.
  /// choose child's layout, offset
  @override
  void performLayout() {
    final RenderBox? child = this.child;

    /// choose layout.
    /// "constraints go down."
    child?.layout(
      BoxConstraints(
          minHeight: 50.0,
          maxHeight: constraints.minHeight,
          minWidth: 0.0,
          maxWidth: constraints.minWidth),
      parentUsesSize: true,
    );

    /// choose size
    size = Size(
      constraints.maxWidth,
      constraints.maxHeight,
    );

    final BoxParentData? childParentData = child?.parentData as BoxParentData;

    /// choose offset
    childParentData?.offset = Offset(
      constraints.maxWidth - child!.size.width,
      constraints.maxHeight - child.size.height,
    );
  }
}
