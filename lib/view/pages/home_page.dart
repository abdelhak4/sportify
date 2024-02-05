import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  @override
  Widget build(BuildContext context) {
    final soccerTeamProvider = ref.watch(homeViewModelProvider);
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
            TextButton(
              onPressed: () async {
                print('here in fetch ${_controller.text}');
                await soccerTeamProvider.fetchSoccerTeam(_controller.text);
              },
              child: Text('Fetch'),
            ),
            soccerTeamProvider.isLoaded
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: soccerTeamProvider.soccerTeams.length,
                      itemBuilder: (context, index) {
                        final team = soccerTeamProvider.soccerTeams[index];
                        return ListTile(
                          leading: Image.network(team.logo),
                          title: Text(team.name),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
