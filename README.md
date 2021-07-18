<!-- # todo_dev

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference. -->

本项目由adobe xd直接导出，共有8个界面，调用各界面请直接在lib/main.dart中的MyApp类中的build函数中home:后改为要调用的界面，并导入相应的包

如调用XDGooglePixel51.dart须在开头导入```import './XDGooglePixel51.dart';```并将main.dart的25行改为```home: XDGooglePixel51(),```

已知bug：

1.动画无法导出

2.下方切换到下一个页面的按钮显示有问题并无法点击

3.文本框无法点击

4.字体与原始设计不同（因为我电脑里没有设计时用的字体😭😭😭）
