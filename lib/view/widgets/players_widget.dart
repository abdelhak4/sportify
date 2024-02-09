import 'package:flutter/material.dart';
import 'package:sportify/main.dart';
import 'package:sportify/model/team_players.dart';

class PlayersWidget extends StatelessWidget {
  const PlayersWidget({
    super.key,
    required ScrollController listViewScrollController,
    required this.teamPlayers,
  }) : _listViewScrollController = listViewScrollController;

  final ScrollController _listViewScrollController;
  final List<TeamPlayers> teamPlayers;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        teamPlayers.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ImageContainerWidget(
                          url: teamPlayers[index].photo, height: 50, width: 50),
                      const SizedBox(width: 24),
                      Text(
                        teamPlayers[index].name.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
