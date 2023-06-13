import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailAuthScreen extends StatefulWidget {
  static const String id = 'emailAuth-screen';

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {

  bool validate = false;
  bool _login = false;

  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color:Colors.black),
        title: Text('Login',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.red.shade200,
                child: Icon(
                  CupertinoIcons.person_alt_circle,
                  color: Colors.red,
                  size:60,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text('Enter to ${_login ? "login" : "Register"}',
                style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter Email and Password to ${_login ? "login" : "Register"}",
                style: TextStyle(color:Colors.grey),
              ),
              SizedBox(
                height : 10,
              ),
              TextFormField(
                controller: _emailController,
                validator: (value){
                  final bool isvalid = EmailValidator.validate(_emailController.text);
                  if(value == null || value.isEmpty){
                    return 'Enter email' ;
                  }
                  if(value.isEmpty && isvalid == false){
                    return "Enter valid email";
                  }
                    return null;
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left:10),
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(4),),
                ),
              ),
              SizedBox(height:10),
              TextFormField(
                controller : _passwordController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left:10),
                  labelText: 'Password',
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(4),),
                ),
                onChanged: (value){
                  if(value.length>3){
                    setState(() {
                      validate = true;
                    });
                  }else{
                    setState(() {
                      validate = false;
                    });
                  }
                },
              ),
            ],
          ),
      ),
      bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: AbsorbPointer(
              absorbing: validate ? false : true,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: validate
                      ? MaterialStateProperty.all(Theme.of(context).primaryColor)
                      : MaterialStateProperty.all(Colors.grey),
                ),
                onPressed: (){

                },
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child:Text(
                        "${_login ? "login" : "Register"}",
                      style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                ),
              ),
            ),

    ),
      );
  }
}
