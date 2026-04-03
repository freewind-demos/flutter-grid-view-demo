# Flutter 网格（GridView.builder）

## 简介

`SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)` 固定每行三列，`GridView.builder` 生成 20 个 `Card` 占位。用最少代码体验「可滚动二维栅格」。

## 快速开始

### 环境要求

Flutter SDK。

### 运行

```bash
flutter pub get
flutter run
```

## 概念讲解

### 第一部分：delegate 决定几何

`FixedCrossAxisCount` 适合等宽宫格；若要自适应最小宽度可用 `MaxCrossAxisExtent` 版本。

### 第二部分：为什么用 `builder`

Item 数量大时惰性构建；若固定少量子项也可用 `GridView.count`。

## 完整示例

见 `lib/main.dart`：`itemBuilder` 根据 `index` 返回 `Card`。

## 注意事项

- 嵌套滚动（栅格在垂直列表里）需处理 `shrinkWrap`、主滚动轴协商或换用 `CustomScrollView` + `SliverGrid`。
- 图片网格应注意内存与缓存。

## 完整讲解（中文）

`GridView` 本质是 **二维滚动的 Recycler**：只画屏幕上附近的 cell。三列、二十项这种规模在真机上应该丝滑；若卡，多半是去 `itemBuilder` 里做了重计算或decode 大图。先理解 delegate，再谈性能。
