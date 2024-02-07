import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sportify/model/team_players.dart';
import 'package:sportify/view_model/home_view_model.dart';

class TeamScreen extends StatelessWidget {
  final List<TeamPlayers> teamPlayers;
  const TeamScreen({super.key, required this.teamPlayers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.network(
                          teamPlayers[index].photo,
                          width: 100,
                          height: 100,
                        ),
                        Text(teamPlayers[index].name),
                        // Text(teamPlayers[index].),
                      ],
                    )),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
