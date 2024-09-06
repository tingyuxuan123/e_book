import 'package:e_book/pages/DoubanStorePage/douban_store_page.dart';
import 'package:e_book/pages/EbookStorePage/ebook_store_page.dart';
import 'package:e_book/pages/MyBookPage/mybook_page.dart';
import 'package:e_book/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lazy_load_indexed_stack/lazy_load_indexed_stack.dart';
import 'package:line_icons/line_icons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  List rootApp = [
    {"icon": LineIcons.home, "text": "首页"},
    {"icon": LineIcons.book, "text": "豆瓣读书"},
    {"icon": LineIcons.shoppingBag, "text": "商城"},
    {"icon": LineIcons.heart, "text": "我的"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      bottomNavigationBar: _getBottomNavigator(context),
      body: LazyLoadIndexedStack(index: _currentIndex, children: const [
        //更具索引懒加载的页面
        HomePage(),
        DoubanStorePage(),
        EbookStorePage(),
        MybookPage()
      ]),
    );
  }

//设置底部导航栏
  Widget _getBottomNavigator(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: _currentIndex, //当前页面索引
      items: List.generate(
        rootApp.length,
        (index) {
          return SalomonBottomBarItem(
            selectedColor: Theme.of(context).colorScheme.onSurface,
            unselectedColor: Theme.of(context).colorScheme.inversePrimary,
            icon: Icon(rootApp[index]['icon']),
            title: Text(rootApp[index]['text']),
          );
        },
      ),
      onTap: (index) => setState(() => _currentIndex = index),
    );
  }
}
