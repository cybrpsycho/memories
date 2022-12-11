import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.toUpperCase()),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: Text('Setting ${index + 1}'),
            onTap: () {},
          ),
          itemCount: 3,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit_note_rounded),
      ),
    );
  }
}
