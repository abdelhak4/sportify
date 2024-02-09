
  import 'package:flutter/material.dart';
import 'package:sportify/view/widgets/team_grid_view.dart';

Future showMyBottomSheet(BuildContext context, {bool error = false}) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return error
            ? const SizedBox(
                height: 100,
                width: double.infinity,
                child: Center(child: Text('No teams found!')),
              )
            : const TeamGridView();
      },
    );
  }