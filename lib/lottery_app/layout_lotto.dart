import 'package:flutter/material.dart';
import 'package:login_lotto2/lottery_app/lotto.dart';
import 'package:login_lotto2/responsive/breakpoint.dart';
import 'package:login_lotto2/responsive/responsive_center.dart';

class LayoutLotto extends StatelessWidget {
  const LayoutLotto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 125, 198),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 208, 150, 3),
        title: const Text(
          '로또 앱',
          style: TextStyle(
            fontFamily: 'HiMelody',
            fontSize: 35,
          ),
        ),
        centerTitle: true,
      ),
      body: const ResponsiveCenter(
        maxContentWidth: Breakpoint.deskTop,
        padding: EdgeInsets.all(16),
        child: Lotto(),
      ),
    );
  }
}
