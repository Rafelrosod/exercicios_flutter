import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
       @override
         Widget build(BuildContext context){
              return Scaffold(
               backgroundColor: Colors.green,
                   appBar: AppBar(
                      title: const Text('App 1', style: TextStyle(color: Colors.black87)),
                      backgroundColor: Colors.yellow,
               ),
           body: Container(
             alignment: Alignment.center,
             child: const Text("Hello",
             style: TextStyle(
               fontSize: 200,
               color: Colors.yellow,)
                 ,
             ),
           ),
       );
      }
}

