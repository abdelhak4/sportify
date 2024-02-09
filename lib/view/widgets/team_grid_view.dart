import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sportify/view/pages/team_infos.dart';
import 'package:sportify/view_model/home_view_model.dart';

class TeamGridView extends ConsumerWidget {
  const TeamGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SoccerViewModel soccerTeamProvider =
        ref.read(soccerViewModelProvider);
    return GridView.count(
      crossAxisCount: 2,
      // childAspectRatio: (2 / 1),
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      //physics:BouncingScrollPhysics(),
      padding: const EdgeInsets.all(10.0),

      children: soccerTeamProvider.soccerTeams
          .map(
            (team) => GestureDetector(
              onTap: () async {
                try {
                  await soccerTeamProvider.fetchTeamPlayers(team.id.toString());
                  await soccerTeamProvider.fetchNextMatch(team.id.toString());
                } catch (e) {
                  if (!context.mounted) return;
                  print("object ..................");

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(e.toString()),
                      duration: Duration(seconds: 2),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                      ),
                    ),
                  );
                  return;
                }
                if (!context.mounted) return;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TeamScreen(
                        soccerViewModel: soccerTeamProvider,
                        soccerTeam: team,
                      );
                    },
                  ),
                );
              },
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      team.logo,
                      width: 140,
                      height: 120,
                    ),
                    Text(team.name),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
