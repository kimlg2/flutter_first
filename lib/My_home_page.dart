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

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 30,
              ),
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
              TextField(
          
                decoration: InputDecoration(
          
                  labelText: '글자',
                   border: OutlineInputBorder(),
                ),
          
                onChanged: (text) {
                  print(text);
                },
                ),
          
              Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/cookie.png',
                    width: 150,
                    height: 150,
                  ),
                ),
              ),
          
            ] ,
          ),
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