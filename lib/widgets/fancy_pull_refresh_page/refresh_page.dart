// flutter pub add liquid_pull_to_refresh
// https://www.youtube.com/watch?v=cHh0_Y3oEJ8&list=PLlvRDpXh1Se6mtlWw6pE9MXZ2o4k_KULp&index=3
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class RefreshWidget extends StatelessWidget {
  const RefreshWidget({super.key});

  Future<void> _handleRefresh() async {
    return await Future.delayed(
      Duration(seconds: 1), // delay 3 giây
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh, // hàm promes gọi api lấy data
        height: 300, // chiều cao của widget reload
        backgroundColor: Colors.green, // màu của cục tròn refresh
        animSpeedFactor: 1, // tốc độ kết thúc animation
        showChildOpacityTransition:
            false, // show danh sách child ListView bên dưới khi đang refresh
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 300,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 300,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 300,
                color: Colors.deepPurple,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 300,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
