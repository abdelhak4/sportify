import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sportify/view/pages/team_infos.dart';
import 'package:sportify/view_model/home_view_model.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future _showBottomSheet(BuildContext context, {bool error = false}) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return error
            ? const SizedBox(
                height: 100,
                width: double.infinity,
                child: Center(child: Text('An error occurred')),
              )
            : const TeamGridView();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final soccerTeamProvider = ref.watch(soccerViewModelProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Search for sports',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            soccerTeamProvider.isLoaded
                ? TextButton(
                    onPressed: () async {
                      FocusScope.of(context).unfocus();
                      await soccerTeamProvider
                          .fetchSoccerTeam(_controller.text)
                          .then((value) => _showBottomSheet(context))
                          .onError((error, stackTrace) =>
                              _showBottomSheet(context, error: true));
                    },
                    child: const Text('Fetch'),
                  )
                : const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

class TeamGridView extends ConsumerWidget {
  const TeamGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final soccerTeamProvider = ref.read(soccerViewModelProvider);
    return GestureDetector(
      onTap: () async {
        await soccerTeamProvider.fetchTeamPlayers('1');
        if (!context.mounted) return;
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return TeamScreen(teamPlayers: soccerTeamProvider.teamPlayers);
            },
          ),
        );
      },
      child: GridView.count(
        crossAxisCount: 2,
        // childAspectRatio: (2 / 1),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        //physics:BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10.0),

        children: soccerTeamProvider.soccerTeams
            .map((e) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        e.logo,
                        width: 140,
                        height: 120,
                      ),
                      Text(e.name),
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}

// Future displayBottomSheet(BuildContext context, String message) {
//   return showModalBottomSheet(
//     context: context,
//     builder: (BuildContext context) {
//       return Container(
//         height: 200,
//         child: Center(
//           child: Text(message),
//         ),
//       );
//     },
//   );
// }
