import 'package:baseapp/app/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'meta/views/splash_view/splash_view.dart';

void main() {
  runApp(MyApp());
}

//SplashView
//LoginView
//HomeView

class MyApp extends StatelessWidget {
  // const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MaterialApp(
          theme: ThemeData.dark(),
          home: SplashView(),
          debugShowCheckedModeBanner: false,
        ),
        providers: provider);
    // Day 2 :Counter App Code
    // ChangeNotifierProvider(
    //     /*ChangeNotiferProvider is taking requried parameter
    //      of create which is taking an empty value & it refering
    //       to the CounterNotifer and child as MaterialApp
    //       (_) : Its is just Variable */
    //     create: (_) => CounterNotifer(),
    //     child: MaterialApp(
    //       theme: ThemeData.dark(),
    //       home: HomeView(),
    //       debugShowCheckedModeBanner: false,
    //     ));
  }
}
