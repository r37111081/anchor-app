import 'package:flutter/material.dart';

BottomNavigationBar buildCustomBottomNavigationBar({
  required int currentIndex,
  required Function(int) onTap,
}) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed, // 固定佈局
    backgroundColor: const Color(0xFFBDD2EC), // 背景色
    selectedItemColor: const Color(0xFF295891), // 選中按鈕的顏色
    unselectedItemColor: const Color(0xFF295891), // 未選中按鈕的顏色
    currentIndex: currentIndex, // 當前選中的按鈕索引
    onTap: onTap, // 點擊按鈕時觸發
    showSelectedLabels: true, // 顯示選中按鈕的文字
    showUnselectedLabels: true, // 顯示未選中按鈕的文字
    selectedLabelStyle: const TextStyle(
      fontSize: 16, // 固定文字大小為 16px
      color: Color(0xFF295891), // 文字顏色
    ),
    unselectedLabelStyle: const TextStyle(
      fontSize: 16, // 固定文字大小為 16px
      color: Color(0xFF295891), // 文字顏色
    ),
    selectedIconTheme: const IconThemeData(
      size: 32, // 選中圖標大小
      color: Color(0xFF295891), // 選中圖標顏色
      opacity: 1.0, // 確保選中圖標完全顯示
    ),
    unselectedIconTheme: const IconThemeData(
      size: 32, // 未選中圖標大小
      color: Color(0xFF295891), // 未選中圖標顏色
      opacity: 1.0, // 確保未選中圖標完全顯示
    ),
    items: const [
      BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.all(8.0), // 添加 padding 8px
          child: Icon(Icons.home),
        ),
        label: '首頁', // 按鈕文字
      ),
      BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.all(8.0), // 添加 padding 8px
          child: Icon(Icons.search),
        ),
        label: '搜尋', // 按鈕文字
      ),
      BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.all(8.0), // 添加 padding 8px
          child: Icon(Icons.add_circle),
        ),
        label: '新增作品', // 按鈕文字
      ),
      BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.all(8.0), // 添加 padding 8px
          child: Icon(Icons.book),
        ),
        label: '我的書籤', // 按鈕文字
      ),
      BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.all(8.0), // 添加 padding 8px
          child: Icon(Icons.person),
        ),
        label: '個人中心', // 按鈕文字
      ),
    ],
  );
}
