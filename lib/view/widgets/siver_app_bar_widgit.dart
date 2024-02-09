import 'package:flutter/material.dart';
import 'package:sportify/main.dart';
import 'package:sportify/model/soccer_team.dart';

class SiverAppBarWidgit extends StatelessWidget {
  const SiverAppBarWidgit({
    super.key,
    required double topPadding,
    required this.soccerTeam,
  }) : _topPadding = topPadding;

  final double _topPadding;
  final SoccerTeam soccerTeam;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      expandedHeight: 150,
      collapsedHeight: 100,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.only(top: _topPadding, left: 80),
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            ImageContainerWidget(url: soccerTeam.logo, height: 50, width: 50),
            const SizedBox(width: 10),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       soccerTeam.name,
            //       style: const TextStyle(fontSize: 14, color: Colors.black),
            //     ),
            //     // Text(
            //     //   soccerTeam.country ?? '',
            //     //   style: const TextStyle(fontSize: 15, color: Colors.black),
            //     // ),
            //     // Text(
            //     //   soccerTeam.code ?? '',
            //     //   style: const TextStyle(fontSize: 15, color: Colors.black),
            //     // ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
