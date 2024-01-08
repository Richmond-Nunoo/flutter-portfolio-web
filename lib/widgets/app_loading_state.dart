import 'package:flutter/material.dart';
import 'package:portfolio/mainpage/homepage.dart';

class AppLoadingScreen extends StatefulWidget {
  const AppLoadingScreen({Key? key}) : super(key: key);

  @override
  AppLoadingScreenState createState() => AppLoadingScreenState();
}

class AppLoadingScreenState extends State<AppLoadingScreen>
    with WidgetsBindingObserver {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // App is in the foreground, consider it loaded
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : const HomePage();
  }
}
