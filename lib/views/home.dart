import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('memories'.toUpperCase()),
        actions: [
          AspectRatio(
            aspectRatio: 1,
            child: IconButton(
              onPressed: () => context.goNamed('bin'),
              tooltip: 'Bin',
              icon: const Icon(Icons.delete_rounded),
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: IconButton(
              onPressed: () => context.goNamed('settings'),
              tooltip: 'Settings',
              icon: const Icon(Icons.settings_rounded),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: Text('Note ${index + 1}'),
            onTap: () => context.goNamed('note'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed('note'),
        child: const Icon(Icons.edit_note_rounded),
      ),
    );
  }
}
