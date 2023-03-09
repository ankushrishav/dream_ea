import 'package:flutter/material.dart';

class DreamPage extends StatefulWidget {
  @override
  _CreateTeamWidgetState createState() => _CreateTeamWidgetState();
}

class _CreateTeamWidgetState extends State<DreamPage> {
  final List<String> _players = [
    'Player 1',
    'Player 2',
    'Player 3',
    'Player 4',
    'Player 5',
    'Player 6',
    'Player 7',
    'Player 8',
    'Player 9',
    'Player 10',
    'Player 11',
  ];

  final Set<String> _selectedPlayers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Team'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _players.length,
              itemBuilder: (BuildContext context, int index) {
                final player = _players[index];
                return CheckboxListTile(
                  title: Text(player),
                  value: _selectedPlayers.contains(player),
                  onChanged: (bool? value) {
                    setState(() {
                      if (value == true) {
                        _selectedPlayers.add(player);
                      } else {
                        _selectedPlayers.remove(player);
                      }
                    });
                  },
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: _selectedPlayers.length == 11
                ? () {
                    // TODO: Save the selected players to the user's team
                    Navigator.pop(context);
                  }
                : null,
            child: Text('Create Team'),
          ),
        ],
      ),
    );
  }
}
