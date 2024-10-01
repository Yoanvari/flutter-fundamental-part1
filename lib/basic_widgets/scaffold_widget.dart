import 'package:flutter/material.dart';

class MyScaffoldWidget extends StatelessWidget {
  const MyScaffoldWidget({
    super.key,
    required this.title,
    required this.counter,
    required this.incrementCounter,
    required this.children,
  });

  final String title;
  final int counter;
  final VoidCallback incrementCounter;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
                height: 20), // Beri jarak antara counter dan tombol dialog
            ...children, // Tambahkan child di sini untuk menampilkan MyDialogWidget
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
