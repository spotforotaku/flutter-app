import 'package:flutter/material.dart';
import 'package:otaku/providers/theme_provider.dart';
import 'package:otaku/shared/loading.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
      ],
      builder: (context, child) {
        final theme = Provider.of<ThemeProvider>(context);

        return MaterialApp(
          theme: theme.themeData,
          home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Otaku",
              ),
              actions: [
                IconButton(
                  onPressed: theme.toggle,
                  icon: theme.icon,
                ),
              ],
            ),
            body: Center(
              child: ElevatedButton(
                onPressed: () {
                  print("OnPressed");
                },
                child: const Text(
                  "Hello World!",
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
