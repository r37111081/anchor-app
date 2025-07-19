import 'package:flutter/material.dart';

PreferredSizeWidget buildCustomAppBar(String title) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight), // 設定 AppBar 的高度
    child: SafeArea(
      // 使用 SafeArea 包裹 AppBar
      child: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20, // 固定文字大小
            color: Colors.white, // 文字顏色
          ),
        ),
        backgroundColor: const Color(0xFF295891), // AppBar 背景顏色
        centerTitle: true, // 標題置中
        elevation: 4.0, // 陰影效果
      ),
    ),
  );
}
