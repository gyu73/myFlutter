import 'package:flutter/rendering.dart';

/// SliverProtocol dir.
/// https://medium.com/saugo360/flutters-rendering-engine-a-tutorial-part-1-e9eff68b825d

/// SliverProtocol extends [RenderSliver].
/// [RenderSliver] extends [RenderObject].

/// constraints: [SliverConstraints].
/// ┗ containing scrolling information and constraints, like the scroll offset, the overlap, etc.
/// The child in turn sends back to its parent a [SliverGeometry].

class _SliverProtocol extends RenderSliver {
  @override
  void performLayout() {
    SliverConstraints constraints = this.constraints;
    SliverGeometry? geometry = this.geometry;
    // TODO: must implement performLayout
  }
}
