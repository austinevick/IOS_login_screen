import 'package:flutter/material.dart';
import 'package:ios_login_screen/widgets/custom_btn.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 3,
          ),
          Text(
            'LOGIN',
            style: TextStyle(fontSize: 28, color: Colors.black),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialLoginButtons(
                onTap: () {},
                color: Color(0xff385498),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'image/facebook.png',
                      height: 20,
                    ),
                    Text(
                      'facebook',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              SocialLoginButtons(
                  onTap: () {},
                  color: Color(0xff1da1f2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'image/twitter.png',
                        height: 30,
                      ),
                      Text(
                        'twitter',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'OR',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Card(
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.person,
                        color: emailController.text.isEmpty
                            ? Colors.grey
                            : Colors.black),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Email'),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Card(
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: 'Password'),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'forgot password?',
            style: TextStyle(color: Colors.grey),
          ),
          Spacer(
            flex: 1,
          ),
          Container(
            height: 50,
            width: 300,
            child: FlatButton(
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50.0)),
                onPressed: () {},
                color: Colors.blue,
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ),
          Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an account?',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'SIGN UP',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
