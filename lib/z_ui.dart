import 'package:flutter/cupertino.dart';
export 'package:z_ui/z_column.dart';
export 'package:z_ui/z_row.dart';
class Zui{
  ///公用children添加分割层方法
  ///输入[separated]时[direction],[spacing]无效
  ///[separated]优先级高于[spacing]
  ///[separated]添加一个组件分割数组
  ///[spacing]添加一个SizedBox组件
  ///[direction]为水平方向时添加SizedBox组件宽度,为垂直方向时添加SizedBox组件高度
   static List<Widget> addSeparated(
       List<Widget> children,
       {double spacing = 0.0,Widget? separated,required Axis direction}
   ) {
    final spacedChildren = <Widget>[];
    Widget spacingWidget = SizedBox(width: spacing);
    if(direction == Axis.vertical){
      spacingWidget = SizedBox(height: spacing);
    }
    for (var i = 0; i < children.length; i++) {
      spacedChildren.add(children[i]);
      if (i != children.length - 1) {
        spacedChildren.add(separated??spacingWidget);
      }
    }
    return spacedChildren;
  }
}