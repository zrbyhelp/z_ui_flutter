import 'package:flutter/cupertino.dart';

class ZRow extends Row {
  ZRow({
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    super.children,
  });
  ZRow.withSpacing({
    super.key,
    double spacing = 0.0,
    List<Widget> children = const <Widget>[],
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,}):super(children: _addSeparated(children,spacing: spacing));
  ZRow.withSeparated({
    super.key,
    required Widget separated,
    List<Widget> children = const <Widget>[],
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,}):super(children: _addSeparated(children,separated: separated));
  static List<Widget> _addSeparated(List<Widget> children, {double spacing = 0.0,Widget? separated}) {
    final spacedChildren = <Widget>[];
    for (var i = 0; i < children.length; i++) {
      spacedChildren.add(children[i]);
        if (i != children.length - 1) {
          spacedChildren.add(separated??SizedBox(width: spacing));
        }
      }
      return spacedChildren;
  }
}
