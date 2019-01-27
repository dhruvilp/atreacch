import 'package:flutter/material.dart';
import 'package:atreacch/colors.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _inputIsValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/images/app_icon.png', width: 120, height: 120,),
                SizedBox(height: 16.0),
                Text('Atreacch',
                  style: Theme.of(context).textTheme.headline,
                ),
              ],
            ),
            SizedBox(height: 50.0),
            Center(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: Theme.of(context).textTheme.subhead,
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  fillColor: aPurpleLight,
                  errorText: _inputIsValid ? null : 'Please enter valid email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            AccentColorOverride(
              color: aBlueLight,
              child: TextField(
                style: Theme.of(context).textTheme.subhead,
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  errorText: _inputIsValid ? null : 'Please enter valid password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('CANCEL'),
                  textColor: aPurpleSuperDark,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    Navigator.of(context).pop();
                  },
                ),
                RaisedButton(
                  child: Text('NEXT'),
                  color: aPurple,
                  textColor: aBgWhite,
                  textTheme: ButtonTextTheme.normal,
                  elevation: 6.0,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/Tabs');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(accentColor: color),
    );
  }
}
