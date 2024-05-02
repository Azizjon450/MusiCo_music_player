import 'package:flutter/material.dart';
import 'package:music_player_musico/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('S E T T I N G S'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(25),
          child: Row(
            children: [
              // Dark mode
              const Text(
                "Dark mode",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Switch.adaptive(
                value: Provider.of<ThemeProvider>(context, listen: false)
                    .isdarkMode,
                onChanged: (value) =>
                    Provider.of<ThemeProvider>(context, listen: false)
                        .toggleTheme(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
