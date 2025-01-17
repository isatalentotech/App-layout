import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Compartilhamento de vida da bateria'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle:true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
               alignment: Alignment.center,
               //color: Colors.red,
               //child: const Text('layout superior'),
            ),
            ),
          Expanded(
            flex: 7,
            child:Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
             Expanded(
              child: Container(
              // alignment: Alignment.center,
            ),
            ),
               Expanded(
              flex: 2,
              child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20), 
               border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              boxShadow: const [
              BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(5, 25), 
              )
            ]
          ),
           child: const Text('Você tem pouca energia restante em seu celular e precisa trabalhar nisso para um caso urgente. Com esse aplicativo, você pode utilizar o poder do,telefone de outra pessoa para fazer seu trabalho; ela também deve ter o mesmo aplicativo instalado.'),
            ),
            ),
               Expanded(
              child: Container(
               alignment: Alignment.center,
               //color: Colors.blue,
               //child: const Text('terceira coluna'),
            ),
            ),
            ],
          )
          ),
             Expanded(
              flex: 2,
              child: Container(
               alignment: Alignment.center,
               //color: Colors.blue,
               //child: const Text('layout inferior'),
            ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
  
  container({required Text child, required MaterialColor color}) {}
}
