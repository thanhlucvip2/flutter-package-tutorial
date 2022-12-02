// flutter pub add percent_indicator
// https://www.youtube.com/watch?v=nmkDW_cYrp4&list=PLlvRDpXh1Se6mtlWw6pE9MXZ2o4k_KULp&index=4
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentIndicator extends StatelessWidget {
  const PercentIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            // dạng tròn
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 1000, // thời gian chạy animation
              radius: 100, // độ lớn
              lineWidth: 10, // width line
              percent: 0.4, // tỉ lệ 1 ( nếu 0,4 = 40%)
              progressColor: Colors.purpleAccent, // màu chiếm tỉ lệ
              backgroundColor: Colors.yellow, // màu còn lại
              circularStrokeCap:
                  CircularStrokeCap.round, // bo tròn 2 đầu thanh percent
              center: Text(
                '40%',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          // dạng ngang
          Center(
            child: LinearPercentIndicator(
              animation: true,
              animationDuration: 1000, // thời gian chạy animation
              lineHeight: 40,
              percent: 0.4, // tỉ lệ 1 ( nếu 0,4 = 40%)
              progressColor: Colors.purpleAccent, // màu chiếm tỉ lệ
              backgroundColor: Colors.yellow, // màu còn lại
            ),
          )
        ],
      ),
    );
  }
}
