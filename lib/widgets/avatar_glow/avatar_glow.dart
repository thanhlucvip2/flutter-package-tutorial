// flutter pub add avatar_glow
// https://www.youtube.com/watch?v=GEMoJxqpzhs&list=PLlvRDpXh1Se6mtlWw6pE9MXZ2o4k_KULp'

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AvatarGlowWidget extends StatelessWidget {
  const AvatarGlowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: const Center(
        child: AvatarGlow(
          endRadius: 100, // đường kính của vòng tròn phát sángD
          glowColor: Colors.white, // màu của vòng tròn phát sáng avatar
          duration: Duration(milliseconds: 3000), // tốc độ phát sáng
          repeatPauseDuration: Duration(milliseconds: 1000),
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ), // thời gian đệm giữa 2 lần phát sáng
        ),
      ),
    );
  }
}
