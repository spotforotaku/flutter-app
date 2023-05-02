import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';

class EpisodeDesc extends StatelessWidget {
  const EpisodeDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .55,
        child: ListView.separated(
            padding: EdgeInsets.only(top: 15),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(8)),
                height: MediaQuery.of(context).size.height * .13,
                child: ListTile(
                  contentPadding: EdgeInsets.only(top: 15, left: 10, right: 15),
                  leading: Image.asset(
                    epimg[index],
                  ),
                  title: Text(
                    epnum[index],
                    style: TextStyle(fontFamily: bold, fontSize: 17),
                  ),
                  subtitle: Text(epdesc[index]),
                  trailing: Image.asset(
                    tick,
                    height: 30,
                  ),
                ),
              );
            },
            separatorBuilder: (context, _) {
              return SizedBox(height: 10);
            },
            itemCount: 9),
      ),
    );
  }
}
