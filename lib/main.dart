import 'package:flutter/material.dart';
import 'package:inherited_widget_demo/event_card.dart';
import 'package:inherited_widget_demo/model/event.dart';

void main() {
  runApp(const MyApp());
}

final event = Event(
  title: 'Flutter at Google I/O 2022',
  description: 'Dig into Flutter announcements from I/O, including Flutter 3',
  rate: [5, 5, 4, 3, 1],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter InheritedWidget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(event: event),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({required this.event});

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('InheritedWidget Dem'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              EventCard(event: event),
            ],
          ),
        ),
      ),
    );
  }
}
