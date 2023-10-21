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

  final _digitadoController = TextEditingController();

  _click(){
    String digitado = _digitadoController.text;
   setState((
       ) {
     print(digitado);
   });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('App 5', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                TextField(
                  controller: _digitadoController,
                  decoration: const InputDecoration(
                  labelText: "Nome",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)
                  ),
                )
              ),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: _click,
                  style: TextButton.styleFrom(
                    fixedSize: const Size(200, 30),
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text("Mostrar",style: TextStyle(color: Colors.white),)),

            ],
          ),
        ),
      ),
    );
  }
}

