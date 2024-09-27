import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '숫자',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 35,
              ),
            ),
            Text(
              '$number',
              style: TextStyle(
                color: Colors.red,
                fontSize: 70,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton');
              },
              child: Text("ElevatedButton"),
            ),
            TextButton(
              onPressed: () {},
              child: Text('TextButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('OutlinedButton'),

            ),
          ] ,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //화면 갱신
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}