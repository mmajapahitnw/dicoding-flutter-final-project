import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var todoList = [
    ['first task', false],
    ['second task', false],
    ['third task',  false],
    ['fourth task', false]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'TO DO List',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(20),
              child: Text(
                todoList[index][0].toString(),
                style: TextStyle(
                  fontFamily: 
                ),
              )
            ),
          );
        },
      ),
    );
  }
}
