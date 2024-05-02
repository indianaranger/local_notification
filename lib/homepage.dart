import 'package:flutter/material.dart';
import 'package:local_notification/services/notify.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text(widget.title),
      ),
      body: Center(   
        child: ElevatedButton(
          child: const Text('Show Notifications'),
          onPressed: ()
          {
            NotificationService().showNotification(title: 'sample title',body:'It works!');
          },
        ),
      ),
    );
  }
}