// https://www.youtube.com/watch?v=-SXNv0s_zl0&list=PLlvRDpXh1Se6mtlWw6pE9MXZ2o4k_KULp&index=5
// flutter pub add carousel_slider
import 'dart:io';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CubeSwipeWidget extends StatelessWidget {
  CubeSwipeWidget({super.key});
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            items: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
            ],
            carouselController:
                buttonCarouselController, // dùng controller để custom slider
            options: CarouselOptions(
              height: 400,
// Tỷ lệ khung hình được sử dụng nếu không có chiều cao nào được khai báo. Mặc định là tỷ lệ khung hình 16:9.
              aspectRatio: 9 / 19,

// Phần width của khung nhìn mà mỗi trang sẽ chiếm. Mặc định là 0,8, có nghĩa là mỗi trang lấp đầy 80% băng chuyền.
              viewportFraction: 0.8,
              initialPage: 0, // thứ tự page khi bước vào

//Xác định xem băng chuyền sẽ lặp vô hạn hay bị giới hạn ở độ dài mục. Mặc định là true, tức là vòng lặp vô hạn.
              enableInfiniteScroll: true,

              reverse: false, // chiều auto scroll tiến hoặc lùi
              autoPlay: true, // auto scroll
              autoPlayInterval:
                  Duration(seconds: 3), // thời gian auto scroll ngang
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve:
                  Curves.easeInCubic, // loại hiệu ứng khi auto scroll

// Xác định xem trang hiện tại có nên lớn hơn các hình ảnh bên cạnh hay không, tạo cảm giác về chiều sâu trong băng chuyền. Mặc định là sai.
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                // hàm được gọi mỗi khi scroll
                print(index);
              },
              scrollDirection: Axis.horizontal, // scroll ngang hoặc dọc
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  buttonCarouselController.nextPage(
                      duration: Duration(seconds: 1));
                },
                child: Container(
                  child: Text("next"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  buttonCarouselController.animateToPage(0,
                      duration: Duration(seconds: 1)); // trở về page 0
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  buttonCarouselController.jumpToPage(1); // trở về page 1
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  buttonCarouselController.jumpToPage(2); // trở về page 2
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
