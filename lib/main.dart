import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/date_time_widget.dart';
import 'package:hello_world/basic_widgets/dialog_widget.dart';
import 'package:hello_world/basic_widgets/scaffold_widget.dart';
import 'package:hello_world/basic_widgets/text_field_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'My Increment App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffoldWidget(
        title: 'My Increment App',
        counter: _counter,
        incrementCounter: _incrementCounter,
        children: const <Widget>[
          MyDialogWidget(),
          MyTextField(labelText: 'Nama'),
          MyTextField(labelText: 'NIM'),
          DatePickerWidget(),
        ]);
  }
}
