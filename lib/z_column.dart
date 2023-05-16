//Column超集拥有Column全部功能方法,额外增加的方法等
//作者:zr
//版本:1.0
//完成时间:2023-05-16
//许可证: MIT

import 'package:flutter/cupertino.dart';
import 'package:z_ui/z_ui.dart';

///ZColumn.withSpacing 根据长度分割
///ZColumn.withSeparated 根据组件分割
class ZColumn extends Column {
  ///根据[spacing]长度分割内容的Column方法
  ZColumn.withSpacing({
    super.key,
    double spacing = 0.0,
    List<Widget> children = const <Widget>[],
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,}):super(children: Zui.addSeparated(children,spacing: spacing,direction: Axis.vertical));
  ///根据[separated]组件分割内容的Column方法
  ZColumn.withSeparated({
    super.key,
    required Widget separated,
    List<Widget> children = const <Widget>[],
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,}):super(children: Zui.addSeparated(children,separated: separated,direction: Axis.vertical));
}
