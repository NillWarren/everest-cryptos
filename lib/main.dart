import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'presenter/coins/coins_pages.dart';
import 'presenter/coins/widgets/botton_navigation_bar.dart';
import 'presenter/details/views/details_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => BottonBar(),
        '/details': (context) => DetailsPage(),
      },
    );
  }
}
