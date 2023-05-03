import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:otaku/firebase_options.dart';
import 'package:otaku/providers/theme_provider.dart';
import 'package:otaku/routes.dart';
import 'package:otaku/shared/error.dart';
import 'package:otaku/shared/loading.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initalization = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
      ],
      builder: (context, child) {
        final theme = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Otaku",
          home: FutureBuilder(
            future: _initalization,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ErrorScreen();
              }

              if (snapshot.connectionState == ConnectionState.done) {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: theme.themeData,
                  routes: AppRoutes.routes,
                  initialRoute: AppRoutes.homeRoute,
                );
              }

              return Loading();
            },
          ),
        );
      },
    );
  }
}
