import 'package:flutter/material.dart';

import '../core/core.dart';
import '../home/home_page.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future.delayed(Duration(seconds: 2)).then((_) => Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => HomePage()),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear,
        ),
        child: Center(child: Image.asset(AppImages.logo)),
      ),
    );
  }
}
