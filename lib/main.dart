import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/mainpage/homepage.dart';

//https://659c6f26968b562d92455192--celebrated-taiyaki-354cfd.netlify.app/
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  if (kIsWeb) {
    runApp(
      const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Potfolio',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
