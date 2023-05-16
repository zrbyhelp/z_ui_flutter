## 功能说明
    目前是一些开发过程中需要用到的布局ui的二次封装,增加一些方便开发的方法等
## 安装方法  
### 引用  
`pubspec.yaml`文件`dependencies:`下增加以下内容引用:  
```yaml
z_ui:  
    git:  
        url: https://github.com/zrbyhelp/z_ui_flutter.git  
```  
### 安装  
    通过命令行安装该内容  
```bash
$ pub get
..
```  
## 使用方法  
### Row超集ZRow  
```dart
void main() {
  ///根据[spacing]长度分割内容的Row方法
  ZRow.withSpacing(spacing: 12.2, children: []);

  //根据[separated]组件分割内容的Row方法
  ZRow.withSeparated(separated: SizedBox(width:10), children: []);
}
```  
### Column超集ZColumn
```dart
void main() {
  ///根据[spacing]长度分割内容的Column方法
  ZColumn.withSpacing(spacing: 12.2, children: []);

  //根据[separated]组件分割内容的Column方法
  ZColumn.withSeparated(separated: SizedBox(width:10), children: []);
}
```  
## 附加信息  
### 关于项目
    目前处于需求收集阶段,如果有什么需要实现的相关功能,欢迎提交问题与提交分支.xiexie.
    实现目标为对现有dart现有类进行功能增加,以做到方便开发且不影响功能逻辑的操作,类似上面两个方法
### 作者:zr  