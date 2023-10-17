import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profil_khadafi_zubaidi_app/presentation/pages/job_page.dart';
import 'package:provider/provider.dart';
import 'package:theme_provider/theme_provider.dart';

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    builder: (context, _) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp3a(),
      );
    },
  );
}

class MyApp3a extends StatefulWidget {
  const MyApp3a({super.key});

  @override
  State<MyApp3a> createState() => _MyApp3aState();
}

class _MyApp3aState extends State<MyApp3a> {
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
        home: const JobPage(),
      );
    },
  );
}
