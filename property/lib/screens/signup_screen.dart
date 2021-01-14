import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = "/signup";

  @override
  _SingupScreenState createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = new GlobalKey();
  TextEditingController _controller = new TextEditingController();

  void _submit() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('signup..'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.limeAccent, Colors.redAccent])),
            ),
            Center(
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                        height: 500,
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
                                    InputDecoration(labelText: 'first name'),
                                keyboardType: TextInputType.name,
                                validator: (values) {
                                  if (values.isEmpty) {
                                    return 'name can not be empty';
                                  }
                                  return null;
                                },
                                onSaved: (values) {},
                              ),

                              TextFormField(
                                decoration:
                                    InputDecoration(labelText: 'last name'),
                                keyboardType: TextInputType.text,
                                validator: (values) {
                                  if (values.isEmpty) {
                                    return 'invalid input';
                                  }
                                  return null;
                                },
                                onSaved: (values) {},
                              ),

                              TextFormField(
                                decoration:
                                    InputDecoration(labelText: 'password'),
                                obscureText: true,
                                controller: _controller,
                                validator: (values) {
                                  if (values.isEmpty || values.length < 5) {
                                    return 'invalid password';
                                  }
                                  return null;
                                },
                                onSaved: (values) {},
                              ),

                              //confirm password
                              TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Confirm Password'),
                                obscureText: true,
                                validator: (values) {
                                  if (values.isEmpty ||
                                      values != _controller.text) {
                                    return 'invalid password';
                                  }
                                  return null;
                                },
                                onSaved: (values) {},
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
