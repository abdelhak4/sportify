import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sportify/view/pages/home_page.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

// TODO move this to a separate file
class TeamLogoWidget extends StatelessWidget {
  const TeamLogoWidget({
    super.key,
    required this.url,
    required this.teamName,
  });

  final String url;
  final String teamName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageContainerWidget(url: url, height: 60, width: 60),
        Text(teamName, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget({
    super.key,
    required this.url,
    required this.height,
    required this.width,
  });

  final String url;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(1),
      clipBehavior: Clip.hardEdge,
      child: Image.network(
        url,
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
