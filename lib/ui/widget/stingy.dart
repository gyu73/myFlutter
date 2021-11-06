import 'package:flutter/widgets.dart';
import 'package:my_flutter/ui/renderObject/box/stingy.dart';

class Stingy extends SingleChildRenderObjectWidget {
  Stingy({
    required Widget child,
  }) : super(child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    return RenderStingy();
  }
}
