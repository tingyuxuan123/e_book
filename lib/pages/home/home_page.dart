import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: _getBodyUI(),
    );
  }

  Widget _getBodyUI() {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(25.r), //内边距
      child: Column(
        //头像
        children: [
          10.verticalSpace, //站10个间隔
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "晚上好,",
                    style:
                        TextStyle(fontSize: 50.sp, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "swcode",
                    style:
                        TextStyle(fontSize: 42.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
              const CircleAvatar(
                  backgroundImage: AssetImage('images/default-avatar.jpeg'))
            ],
          ),
          10.verticalSpace,
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 15.r),
                  height: 18.h,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Text(
                    "搜索...",
                    style: TextStyle(
                        fontSize: 30.sp,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(
                    LineIcons.stream,
                    size: 50.r,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          6.verticalSpace,
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "读书活动",
                  style:
                      TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 150.w,
                child: Swiper(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text("1"),
                    );
                  },
                ),
              )
            ],
          ),
        ],
        //活动读书

        //活动类型

        //特别为你准备
      ),
    ));
  }
}
