import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BinScreen extends StatefulWidget {
  const BinScreen({super.key});

  @override
  State<BinScreen> createState() => _BinScreenState();
}

class _BinScreenState extends State<BinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bin'.toUpperCase()),
        actions: [
          AspectRatio(
            aspectRatio: 1,
            child: IconButton(
              onPressed: () {},
              tooltip: 'Clear Bin',
              icon: const Icon(Icons.delete_forever_rounded),
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
        onPressed: () {},
        child: const Icon(Icons.edit_note_rounded),
      ),
    );
  }
}
