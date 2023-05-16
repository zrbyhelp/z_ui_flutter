## 功能说明

目前是一些开发过程中需要用到的布局ui的二次封装,增加一些方便开发的方法等  

## 安装方法  
### 引用  
`pubspec.yaml`文件`dependencies:`下增加以下内容引用:  
```yaml
z_ui_flutter:  
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
  ZRow.withSpacing(separated: SizedBox(width:10), children: []);
}
```  
### Column超集ZColumn
```dart
void main() {
  ///根据[spacing]长度分割内容的Column方法
  ZColumn.withSpacing(spacing: 12.2, children: []);

  //根据[separated]组件分割内容的Column方法
  ZColumn.withSpacing(separated: SizedBox(width:10), children: []);
}
```  
## 附加信息  
### 作者:zr  
### 版本:1.0  
### 完成时间:2023-05-16  
### 许可证: MIT  
