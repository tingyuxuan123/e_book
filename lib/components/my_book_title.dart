import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBookTitle extends StatelessWidget {
  final List? books;
  final double? height;
  final double? width;
  const MyBookTitle({super.key, this.books, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "特别为你准备",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          8.verticalSpace,
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(books?.length ?? 0, (index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: width,
                            height: height,
                            margin: const EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                    image: CachedNetworkImageProvider(
                                        books?[index]['cover']!,
                                        headers: const {
                                          "User-Agent":
                                              "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36 Edg/128.0.0.0"
                                        }),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              top: width! / 1,
                              child: Container(
                                alignment: Alignment.center,
                                width: 60,
                                height: 24,
                                decoration: BoxDecoration(
                                    color: Colors.blue[500],
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: const Text(
                                  "￥12.0",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(books?[index]["name"]!),
                      ),
                      Text(
                        books?[index]["author"]!,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black45,
                        ),
                      )
                    ],
                  );
                }),
              ))
        ],
      ),
    );
  }
}
