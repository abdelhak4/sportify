import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sportify/view/widgets/bottom_sheet.dart';
import 'package:sportify/view/widgets/team_grid_view.dart';
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

  final _formKey = GlobalKey<FormState>();
  // shared preferences

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final soccerTeamProvider = ref.watch(soccerViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sportify'),
        backgroundColor: Colors.blue,
        shadowColor: Colors.lightBlue,
        elevation: 5,
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: height * 0.15,
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter some text';
                    }
                    value = value.trim();
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    if (value.length < 3) {
                      return 'Please enter at least 3 characters';
                    }
                    return null;
                  },
                  controller: _controller,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueAccent[100],
                    hintText: 'Search...',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    suffixIcon: const Icon(Icons.search_rounded,
                        size: 30, color: Colors.grey),
                    // errorText: _errorText,
                    // prefix: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              soccerTeamProvider.isLoaded
                  ? SizedBox(
                      width: 200,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                          shadowColor: Colors.lightBlue,
                          elevation: 5,
                        ),
                        onPressed: () async {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                          FocusScope.of(context).unfocus();
                          await soccerTeamProvider
                              .fetchSoccerTeam(_controller.text)
                              .then((value) => showMyBottomSheet(context))
                              .onError((error, stackTrace) =>
                                  showMyBottomSheet(context, error: true));
                          // showBottomSheet(context: context, builder: builder)
                        },
                        child: const Text('Search',
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    )
                  : const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
