
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scr/pages/forgot_password_page.dart';
import 'package:scr/pages/profile_page.dart';
import 'package:scr/pages/widgets/header_widget.dart';

import '../common/theme_helper.dart';
import 'Registration.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}): super(key:key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

  class _LoginPageState extends State<LoginPage>{
    double _headerHeight = 250;
    Key _formKey = GlobalKey<FormState>();
    @override
    Widget build(BuildContext context) {

      return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: _headerHeight,
                child: HeaderWidget(_headerHeight, true, Icons.login_rounded),
              ),
              SafeArea(
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 10),//This will be the login form
                  child: Column(
                    children: [
                      Text(
                        'Bem-vindo/a',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Entra na tua conta',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height:30.0),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextField(
                              decoration: ThemeHelper().textInputDecoration('Nome de Usuário', 'Digite o seu nome de usuário'),
                            ),
                            SizedBox(height: 30.0),
                            TextField(
                              obscureText: true,
                              decoration: ThemeHelper().textInputDecoration('Palavra-Passe','Digite a sua palavra-passe'),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(context) => ForgotPasswordPage()), );
                                },
                                child: Text("Esqueceste-te da palavra-passe?", style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            Container(
                              decoration: ThemeHelper().buttonBoxDecoration(context),
                              child: ElevatedButton(
                                style: ThemeHelper().buttonStyle(),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text('Entrar'.toUpperCase(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                ),
                                onPressed: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                              //child: Text('Não tens conta? Regista-te'),
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(text: "Não tens conta? "),
                                    TextSpan(
                                      text: 'Regista-te',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = ( ){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                                        },
                                      style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).accentColor)
                                    ),
                                  ]
                                )
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
