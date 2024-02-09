import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sportify/main.dart';
import 'package:sportify/model/soccer_team.dart';
import 'package:sportify/model/team_next_match_model.dart';
import 'package:sportify/model/team_players.dart';
import 'package:sportify/view/widgets/match_date_widget.dart';
import 'package:sportify/view/widgets/players_widget.dart';
import 'package:sportify/view/widgets/siver_app_bar_widgit.dart';
import 'package:sportify/view_model/home_view_model.dart';

class TeamScreen extends ConsumerStatefulWidget {
  final SoccerViewModel soccerViewModel;
  final SoccerTeam soccerTeam;

  const TeamScreen(
      {super.key, required this.soccerViewModel, required this.soccerTeam});

  @override
  ConsumerState<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends ConsumerState<TeamScreen> {
  late final ScrollController _listViewScrollController;

  @override
  void initState() {
    _listViewScrollController = ScrollController();

    _listViewScrollController.addListener(
      () {
        setState(
          () {
            if (widget.soccerViewModel.soccerTeamRepository.playersHasMore &&
                _listViewScrollController.position.pixels ==
                    _listViewScrollController.position.maxScrollExtent) {
              widget.soccerViewModel
                  .loadMoreTeamPlayers(widget.soccerTeam.id.toString());
            }
          },
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final NextMatch nextMatch = widget.soccerViewModel.nextMatch!;
    final SoccerTeam soccerTeam = widget.soccerTeam;
    final teamPlayers = ref.watch(soccerViewModelProvider).teamPlayers;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SiverAppBarWidgit(soccerTeam: soccerTeam),
            SiverToBoxBody(
              nextMatch: nextMatch,
              listViewScrollController: _listViewScrollController,
              teamPlayers: teamPlayers,
            )
          ],
        ),
      ),
    );
  }
}

class SiverToBoxBody extends StatelessWidget {
  const SiverToBoxBody({
    super.key,
    required this.nextMatch,
    required ScrollController listViewScrollController,
    required this.teamPlayers,
  }) : _listViewScrollController = listViewScrollController;

  final NextMatch nextMatch;
  final ScrollController _listViewScrollController;
  final List<TeamPlayers> teamPlayers;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TeamLogoWidget(
                          url: nextMatch.teams.home.logo,
                          teamName: nextMatch.teams.home.name,
                        ),
                        MatchDateWidget(nextMatch: nextMatch),
                        TeamLogoWidget(
                          url: nextMatch.teams.away.logo,
                          teamName: nextMatch.teams.away.name,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            PlayersWidget(
              listViewScrollController: _listViewScrollController,
              teamPlayers: teamPlayers,
            ),
          ],
        ),
      ),
    );
  }
}
