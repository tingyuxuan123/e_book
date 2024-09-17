import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_book/components/my_book_title.dart';
import 'package:e_book/components/my_search_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  var bannerList = [
    {
      'title': '1924：重返现代心灵｜百年前中国青年生活实录',
      'url':
          'https://img1.doubanio.com/mpic/book-activity-ff51f2ee50f14d48be486f57b6c13aeb',
      'category': '读书专题',
      'time': '2024-8-30 9-13'
    },
    {
      'title': '做梦的人是幸福的”：百年前的鲁迅和青年朋友｜黄乔生×高远东',
      'url':
          'https://img9.doubanio.com/mpic/book-activity-832f92ecf6644bdc8abb4f6c3611ccb6',
      'category': '直播活动',
      'time': '2024-09-06'
    },
    {
      'title': '出走百年，再谈娜拉｜周可×张春田',
      'url':
          'https://img1.doubanio.com/mpic/book-activity-1763bb671c164c3b949e02424d6aa100',
      'category': '直播活动',
      'time': '2024-09-19'
    }
  ];

  var activities = ['全部', '图书专题', '直播活动', '名家问答', '共读交流', '鉴书团'];

  var _value = 0;

  var books = [
    {
      'cover': 'https://img3.doubanio.com/view/subject/s/public/s34823157.jpg',
      'name': '食南之徒',
      'author': '马伯庸'
    },
    {
      'cover': 'https://img1.doubanio.com/view/subject/s/public/s34903230.jpg',
      'name': '怪画谜案',
      'author': '[日] 雨穴'
    },
    {
      'cover': 'https://img1.doubanio.com/view/subject/s/public/s34893600.jpg',
      'name': '波兰人',
      'author': '(南非) J.M.库切'
    },
    {
      'cover': 'https://img1.doubanio.com/view/subject/s/public/s34905759.jpg',
      'name': '我胆小如鼠',
      'author': '余华'
    },
    {
      'cover': 'https://img1.doubanio.com/view/subject/s/public/s34903230.jpg',
      'name': '怪画谜案',
      'author': '[日] 雨穴'
    },
    {
      'cover': 'https://img1.doubanio.com/view/subject/s/public/s34903230.jpg',
      'name': '怪画谜案',
      'author': '[日] 雨穴'
    },
    {
      'cover': 'https://img1.doubanio.com/view/subject/s/public/s34903230.jpg',
      'name': '怪画谜案',
      'author': '[日] 雨穴'
    }
  ];

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
          4.verticalSpace, //站10个间隔
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
          7.verticalSpace,
          const MySearchTitle(),
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
              5.verticalSpace,
              SizedBox(
                height: 230.w,
                child: Swiper(
                    itemCount: bannerList.length,
                    itemBuilder: (context, index) {
                      return Stack(children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                              image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                      bannerList[index]["url"]!,
                                      headers: const {
                                        "User-Agent":
                                            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0"
                                      }),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15.r)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20.r, horizontal: 20.r),
                          child: Column(
                            children: [
                              Text(
                                bannerList[index]['title']!,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 32.sp),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            left: 15,
                            bottom: 15,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4.r),
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                  ),
                                  child: Text(
                                    bannerList[index]['category']!,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.sp),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    bannerList[index]['time']!,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.sp),
                                  ),
                                ),
                              ],
                            ))
                      ]);
                    },
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomRight,
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.white.withOpacity(0.5),
                          activeColor: Colors.white,
                          size: 8.0,
                          activeSize: 8.0,
                          space: 2.0),
                    )),
              )
            ],
          ),
          8.verticalSpace,
          //活动类型
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "活动类型",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Wrap(
                  children: List.generate(activities.length, (index) {
                    return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: ChoiceChip(
                        label: Text(activities[index]),
                        selected: _value == index,
                        onSelected: (value) => {
                          setState(() {
                            _value = index;
                          })
                        },
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
          8.verticalSpace,
          MyBookTitle(
            width: 190.w,
            height: 60.h,
            books: books,
          )
        ],
        //特别为你准备
      ),
    ));
  }
}
