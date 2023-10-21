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

  int _contador = 0;

  _incrementar(){
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: const Text('App 4', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: (_contador < 1000 ? _incrementar : null),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(100, 30)
                  ),
                  child:
                  const Text("Contar",
                    style:TextStyle(
                      fontSize: 20,
                      color: Colors.white),)),
              const SizedBox(width: 20,),
               Text("Contagem: $_contador",
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,)
                ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

