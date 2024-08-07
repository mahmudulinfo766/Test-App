
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/constants/app_colors.dart';
import 'package:test_app/features/router/routes.dart';
import 'package:test_app/generated/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: 2), _navigation);
  }
  void _navigation() async {
      Navigator.pushNamedAndRemoveUntil(
          context, Routes.home, (route) => false);
  }
  @override
  void initState() {
    _startDelay();
    super.initState();
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Center(
            child: Hero(
              tag: 'logo',
              child: Image.asset(
                Assets.imagesLogo,
                width: 180.r,
                height: 180.r,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
