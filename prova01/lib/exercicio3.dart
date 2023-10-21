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
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: const Text('App 3', style: TextStyle(color: Colors.white),
        ),backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            height: 500,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: 250,
                    width: 200,
                    color: Colors.cyan,
                    child: const Icon(Icons.coffee,
                    color: Colors.white,
                    size: 100,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 250,
                    width: 200,
                    color: Colors.yellow,
                    child: const Icon(Icons.lunch_dining,
                      color: Colors.white,
                      size: 100,
                    ),
                  ),
                )
              ],
            ),
            ),
        ),
      ),
    );
  }
}