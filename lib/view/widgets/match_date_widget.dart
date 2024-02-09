import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sportify/model/team_next_match_model.dart';

class MatchDateWidget extends StatelessWidget {
  const MatchDateWidget({
    super.key,
    required this.nextMatch,
  });

  final NextMatch nextMatch;

  @override
  Widget build(BuildContext context) {
    final DateTime date = DateTime.parse(nextMatch.fixture.date);
    final formatedDate = DateFormat('yyyy-MM-dd').format(date);

    final formatedTime = DateFormat('HH:mm').format(date);

    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(formatedDate),
        nextMatch.fixture.status.short != 'TBD' &&
                nextMatch.fixture.status.short != 'PST' &&
                nextMatch.fixture.status.short != 'CANC'
            ? Text('Time: $formatedTime')
            : Text('Time: ${nextMatch.fixture.status.short}'),
        const SizedBox(height: 10),
        Text(nextMatch.fixture.stadium.name ?? 'No stadium',
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }
}
