import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EWORK Manager',
      theme: ThemeData(
        // This is the theme of your application.
        //

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'EWORK Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class LoginFrameInit extends StatefulWidget {
  const LoginFrameInit({Key? key}) : super(key: key);

  @override
  State<LoginFrameInit> createState() => _LoginFrameState();
}

class _LoginFrameState extends State<LoginFrameInit> {

  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  
  void _eventForgotPassword(){
    setState(() {
      
    });
  }

  void _eventSignUp() {
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Column(children: [
        Expanded(
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Text('Username:'),
                  // Adding a simple text input bar (TextField) for the username
                  SizedBox(width: 10), // Add some spacing
                  Expanded(
                    child: TextField(
                      controller: _username,
                      decoration: InputDecoration(
                        hintText: 'Enter your username',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Password:'),
                  // Adding a simple text input bar (TextField) for the username
                  SizedBox(width: 10), // Add some spacing
                  Expanded(
                    child: TextField(
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your Password',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                        FloatingActionButton(
                          onPressed: _eventForgotPassword,
                          tooltip: 'Forgot ?',
                        ),

                        FloatingActionButton(
                          onPressed: _eventSignUp,
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    _username.dispose();
    _password.dispose();
    super.dispose();
  }
}

class LoginPanelInit extends StatefulWidget{
  const LoginPanelInit({Key? key}) : super(key: key);

  @override
  State<LoginPanelInit> createState() => _LoginPanelState();
}


class _LoginPanelState extends State<LoginPanelInit>{
  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 0, top: 0, bottom: 0),
          color: Colors.white10,
          width: 300,
        ),
        Container(
            margin: const EdgeInsets.all(20.0),
            width: 600.0,
            height: 800.0,
            child: const LoginFrameInit(),
        ),
      ],
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Sign In'),
        actions: const <Widget>[],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginPanelInit(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

