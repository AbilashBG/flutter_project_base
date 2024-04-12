import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';

import '../../providers/utlis/dynamic_provider.dart';
import '../providers/home_provider.dart';
import '../utils/assets.dart';
import '../utils/global_widgets/snack_bar.dart';
import '../utils/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(),
      builder: (context, provider) => Consumer<HomeProvider>(
        builder: (context, provider, child) {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: primaryColor,
            statusBarIconBrightness: Brightness.light,
          ));
          Get.replace(provider);
          return SafeArea(
            child: Scaffold(
              body: Center(
                child:  ElevatedButton(
                  onPressed: (){
                    SnackBarHelper().showToast("msg", true,);
                  },
                  child: Text("open snackbar"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
