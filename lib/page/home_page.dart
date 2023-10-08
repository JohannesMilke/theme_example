import 'package:flutter/material.dart';
import '../main.dart';
import '../page/profile_widget.dart';
import '../widget/change_theme_button_widget.dart';

import 'navigationbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu),
          title: const Text(MainApp.title),
          elevation: 0,
          actions: const [
            ChangeThemeButtonWidget(),
          ],
        ),
        body: const ProfileWidget(),
        extendBody: true,
        bottomNavigationBar: const NavigationBarWidget(),
      );

  // @override
  // Widget build(BuildContext context) {
  //   final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
  //       ? 'DarkTheme'
  //       : 'LightTheme';

  //   return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Colors.orange,
  //       title: const Text(MainApp.title),
  //       actions: const [
  //         ChangeThemeButtonWidget(),
  //       ],
  //     ),
  //     body: Center(
  //       child: Text(
  //         'Hello $text!',
  //         style: const TextStyle(
  //           fontSize: 32,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
