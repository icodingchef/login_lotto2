import 'package:flutter/material.dart';
import 'package:login_lotto2/lottery_app/lotto.dart';
import 'package:login_lotto2/responsive/breakpoint.dart';
import 'package:login_lotto2/responsive/responsive_center.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LayoutLotto extends StatelessWidget {
  const LayoutLotto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 125, 198),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 208, 150, 3),
        title: const Text(
          '로또 앱',
          style: TextStyle(
            fontFamily: 'HiMelody',
            fontSize: 35,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.exit_to_app_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const ResponsiveCenter(
        maxContentWidth: Breakpoint.deskTop,
        padding: EdgeInsets.all(16),
        child: Lotto(),
      ),
    );
  }
}
