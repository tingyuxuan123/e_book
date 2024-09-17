import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_icons/line_icons.dart';

class MySearchTitle extends StatelessWidget {
  const MySearchTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.r),
            height: 15.h,
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
        IconButton(
          icon: Icon(
            LineIcons.stream,
            size: 50.r,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
