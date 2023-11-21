import 'package:flutter/material.dart';
import 'package:login_lotto2/login.dart';
import 'package:login_lotto2/responsive/breakpoint.dart';
import 'package:login_lotto2/responsive/responsive_center.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const ResponsiveCenter(
        maxContentWidth: Breakpoint.deskTop,
        padding: EdgeInsets.all(16),
        child: Login(),
      ),
    );
  }
}
