import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './homeScreen.dart';
import './searchPage.dart';
void main() => runApp(const LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Clik',

      home: LoginPageContent(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPageContent extends StatefulWidget {
  @override
  _LoginPageContentState createState() => _LoginPageContentState();
}

class _LoginPageContentState extends State<LoginPageContent> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/bg.jpg", fit: BoxFit.cover),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.asset("assets/logo.png"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Photography on Demand",
                  style: TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Positioned(
            top: 320,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: TextFormField(
                controller: _usernameController,
                focusNode: _usernameFocus,
                onFieldSubmitted: (_) {
                  _usernameFocus.unfocus();
                  FocusScope.of(context).requestFocus(_passwordFocus);
                },
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                ),style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: TextFormField(
                controller: _passwordController,
                focusNode: _passwordFocus,
                onFieldSubmitted: (_) {
                  _passwordFocus.unfocus();
                },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                ),style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 30,
            right: 30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchPage()), // Replace MyScreen() with the name of your page
                      );

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFB4C04).withOpacity(0.80), // Slightly transparent
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40), // Smaller radius
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15), // Smaller padding
                    ),
                    child: Text(
                      "LOG IN",
                      style: TextStyle(fontSize: 16), // Smaller text size
                    ),
                  ),
                ),
                SizedBox(height: 30), // Space between buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      // Signup button action
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFB4C04).withOpacity(0.80), // Slightly transparent
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50), // Smaller radius
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15), // Smaller padding
                    ),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(fontSize: 16), // Smaller text size
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}