import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmbasic/providers/local_providers/local_provider.dart';
import 'package:mvvmbasic/utils/routes.dart';

import '../providers/local_providers/app_local_provider.dart';
import '../utils/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final LocaleProvider _localeProvider = Get.find();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      _localeProvider.navigate(AppRoutes.homeScreen);
    },);
  }

  @override
  Widget build(BuildContext context) {
    return AppLocalProviders(
      child: (context, localProvider, snapshot) {
        if (!localProvider.isLoading) {}
        return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Image.asset(
              dartLogo,
            ),
          ),
        );
      },
    );
  }
}

