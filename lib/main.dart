import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'page/home_page.dart';
import 'provider/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  static const String title = 'Light & Dark Theme';

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          title: title,
          themeMode: themeProvider.themeMode,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          home: const HomePage(),
        );
      },
    );
  }
}
