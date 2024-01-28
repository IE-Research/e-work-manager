
import 'package:flutter/material.dart';


class LoginFrameInit extends StatefulWidget {
  const LoginFrameInit({Key? key}) : super(key: key);

  @override
  State<LoginFrameInit> createState() => _LoginFrameState();
}

class _LoginFrameState extends State<LoginFrameInit> {
  final _usernameController = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() {
    // Dispose the controller when the widget is disposed
    _usernameController.dispose();
    _password.dispose();
    super.dispose();
  }

  void _eventForgotPassword() {
    setState(() {});
  }

  void _eventSignUp() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      controller: _usernameController,
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
}

class LoginPanelInit extends StatefulWidget {
  const LoginPanelInit({Key? key}) : super(key: key);

  @override
  State<LoginPanelInit> createState() => _LoginPanelState();
}

class _LoginPanelState extends State<LoginPanelInit> {
  @override
  Widget build(BuildContext context) {
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

