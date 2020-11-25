import 'package:flutter/material.dart';
import 'package:ios_login_screen/screens/login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  int selectedIndex = 0;
  AnimationController _controller;
  Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 6000),
        value: 0,
        lowerBound: 0,
        upperBound: 1,
        vsync: this);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black45,
                  BlendMode.darken,
                ),
                image: AssetImage('image/ocean.jpg'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Welcome',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing',
              style: TextStyle(color: Colors.white54, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            Spacer(
              flex: 3,
            ),
            FadeTransition(
              opacity: _animation,
              child: Container(
                height: 50,
                width: 300,
                child: FlatButton(
                    shape: OutlineInputBorder(
                        borderSide: selectedIndex == 0
                            ? BorderSide.none
                            : BorderSide(
                                color: Colors.white,
                              ),
                        borderRadius: BorderRadius.circular(50.0)),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => LoginScreen()));
                      setState(() => selectedIndex = 0);
                    },
                    color:
                        selectedIndex == 0 ? Colors.blue : Colors.transparent,
                    child: Text(
                      'LOGIN NOW',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FadeTransition(
              opacity: _animation,
              child: Container(
                height: 50,
                width: 300,
                child: FlatButton(
                    color:
                        selectedIndex == 1 ? Colors.blue : Colors.transparent,
                    shape: OutlineInputBorder(
                        borderSide: selectedIndex == 1
                            ? BorderSide.none
                            : BorderSide(
                                color: Colors.white,
                              ),
                        borderRadius: BorderRadius.circular(50.0)),
                    onPressed: () => setState(
                          () => selectedIndex = 1,
                        ),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
