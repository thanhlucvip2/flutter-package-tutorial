// flutter pub add smooth_page_indicator
// https://pub.dev/packages/smooth_page_indicator
// https://www.youtube.com/watch?v=rnsqpvGL9Yk&list=PLlvRDpXh1Se6mtlWw6pE9MXZ2o4k_KULp&index=6

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothPageIndicatorWidget extends StatelessWidget {
  SmoothPageIndicatorWidget({super.key});
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.deepPurple,
                ),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            // dạng hiệu ứng
            // SwapEffect

            // ExpandingDotsEffect

            // JumpingDotEffect (
            // verticalOffset: 10,
            // jumpScale: 2,
            // )

            // WormEffect

            //ScrollingDotsEffect

            effect: ScrollingDotsEffect(
              activeDotColor: Colors.deepPurple, // color khi nut active
              dotColor:
                  Colors.deepPurple.shade100, // color khi nut không active
              dotHeight: 30, // chiều cao nút
              dotWidth: 30, // chiều ngang nút
              spacing: 10, // khoảng cách các nút
            ),
          )
        ],
      ),
    );
  }
}
