import 'package:flutter/material.dart';
import 'package:otaku/shared/loading.dart';

class OnRecommendation extends StatelessWidget {
  final String animeName;

  const OnRecommendation({
    super.key,
    required this.animeName,
  });

  Future<List<String>> getRecs() async {
    await Future.delayed(Duration(seconds: 4));
    return ["Naruto"];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getRecs(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text(
                "Sorry, there was an error 💀",
              ),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Loading();
        }

        if (snapshot.hasData) {
          var data = snapshot.data!;

          if (data.isEmpty) {
            return Scaffold(
              appBar: AppBar(),
              body: Center(
                child: Text(
                  "Sorry, we couldn't find any recommendations for the anime that you asked 😥",
                ),
              ),
            );
          }

          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text("Recs"),
            ),
          );
        }

        return Scaffold(
          body: Center(
            child: Text(
              "Sorry, we couldn't find any recommendations for the anime that you asked.",
            ),
          ),
        );
      },
    );
  }
}
