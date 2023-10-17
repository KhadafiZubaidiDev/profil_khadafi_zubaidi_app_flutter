import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profil_khadafi_zubaidi_app/presentation/pages/education_page.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/theme_provider.dart';

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp4a(),
      );
    },
  );
}

class MyApp4a extends StatefulWidget {
  const MyApp4a({super.key});

  @override
  State<MyApp4a> createState() => _MyApp4aState();
}

class _MyApp4aState extends State<MyApp4a> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        themeMode: themeProvider.themeMode,
        theme: CustomTheme.lightTheme,
        darkTheme: CustomTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const EducationPage(),
      );
    },
  );
}

