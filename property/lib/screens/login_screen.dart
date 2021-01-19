import 'package:flutter/material.dart';
import 'package:property/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = new GlobalKey();

  void _submit() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login..'),
          actions: <Widget>[
            FlatButton(
              child: Row(
                children: <Widget>[Text('signup'), Icon(Icons.person_add)],
              ),
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(SignupScreen.routeName);
              },
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.greenAccent, Colors.blueAccent])),
            ),
            Center(
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 260,
                        width: 300,
                        padding: EdgeInsets.all(16),
                        child: Form(
                            key: _formKey,
                            child: Column(children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(labelText: 'email'),
                                keyboardType: TextInputType.emailAddress,
                                validator: (values) {
                                  if (values.isEmpty || !values.contains('@')) {
                                    return 'invalid email';
                                  }
                                  return null;
                                },
                                onSaved: (values) {},
                              ),
                              TextFormField(
                                decoration:
                                    InputDecoration(labelText: 'password'),
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty || value.length < 5) {
                                    return 'invalid password';
                                  }
                                  return null;
                                },
                                onSaved: (value) {},
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              RaisedButton(
                                child: Text('Submit'),
                                onPressed: () {
                                  _submit();
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                color: Colors.blue,
                                textColor: Colors.white,
                              )
                            ])))))
          ],
        ));
  }
}
