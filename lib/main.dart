import 'package:flutter/material.dart';
import 'home.dart';
import 'griddb.dart';

void main() {
  runApp(const IoTApp());
}

class IoTApp extends StatelessWidget {
  const IoTApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Assignment 2A', home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My IoT Manager'),
          backgroundColor: Color.fromARGB(255, 87, 87, 87),
        ),
        body: Container(
          height: 1920,
          color: Color.fromARGB(255, 49, 49, 49),
          child: Column(
            children: [
              TabBox(),
              GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(6, (index) {
                    return Center(
                      child: Text(iotDB[index]['devicename'] as String),
                    );
                  }))
            ],
          ),
        ));
  }
}