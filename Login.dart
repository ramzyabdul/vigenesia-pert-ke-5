import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:vigenesia/Screens/Register.dart';



class Login extends StatefulWidget {
  const Login({ Key key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(  
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Login Area',style: TextStyle(
                    fontSize: 22 , fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Form(
                      child:Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Column(
                          children: [
                            FormBuilderTextField(
                              name: "Email" ,
                              controller: emailController,
                              decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 10), 
                              border: OutlineInputBorder(),
                              labelText: "Email"
                              ),
                            ),
                            SizedBox(height: 20),
                             FormBuilderTextField(
                              name: "Password" ,
                              controller: passwordController,
                              decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 10), 
                              border: OutlineInputBorder(),
                              labelText: "Password"
                              ),
                            ),
                            SizedBox(height: 20),
                            Text.rich(
                              TextSpan(children: [ 
                                TextSpan(
                              text: 'Kamu Belum Mempunyai Akun?',
                              style: TextStyle(color: Colors.black54),
                            ),
                            TextSpan(
                              text: 'Daftar',
                              recognizer: TapGestureRecognizer()
                              ..onTap = (){
                                Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                    builder: (BuildContext 
                                    context) => new Register()));
                              },style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.blueAccent)), 
                            ]),
                            ),
                          ],
                        ),
                      )
                      ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}