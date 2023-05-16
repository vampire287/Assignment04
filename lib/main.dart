import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/Home_page.dart';
import 'Provider/dark_them_provider.dart';
import 'ThemeStyle/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(builder: (ctx, value, _) {
        return MaterialApp(
          title: 'Babynama Assignment',
          debugShowCheckedModeBanner: false,
          theme: Styles.themeData(
            themeChangeProvider.darkTheme,
            context,
          ).copyWith(
            useMaterial3: true,
          ),
          home: const HomePage(),
        );
      }),
    );
  }
}
