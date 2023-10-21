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
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text('App 2', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset("asset/formiga.png",color: Colors.deepOrange, width: 200,alignment: Alignment.center,),
            ),
             const Text("Inseto", style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}

