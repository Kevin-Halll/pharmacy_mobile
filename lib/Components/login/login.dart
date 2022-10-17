import 'package:flutter/material.dart';
import 'package:pharmacy_mobile/Components/registration/registration.dart';
import 'package:pharmacy_mobile/widgets/inputfields.dart';
import 'package:pharmacy_mobile/widgets/mainButtons.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
          child: Column(
            children: [
              //<--------- logo --------->
              Image(
                image: AssetImage('assets/images/pharmacy_logo.png'),
              ),

              SizedBox(
                height: 20,
              ),

              Text('Sign In',
                  style: TextStyle(
                    color: Color.fromRGBO(14, 92, 153, 10),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),

              SizedBox(
                height: 4,
              ),

              Text('Welcome Back!',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.black)),

              SizedBox(
                height: 30,
              ),

              Container(
                child: LoginForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//<------------ text controllers //------------>
  final _emailLoginController = TextEditingController();
  final _passwordLoginController = TextEditingController();

  //<------------ sign in function //------------>
  signIn() {
    print(_emailLoginController.text);
    print(_passwordLoginController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
      child: Column(children: [
        //<--------- email field --------->
        InputField(
            hint: 'Email',
            InputIcon: Icons.person,
            controllerName: _emailLoginController),

        SizedBox(
          height: 24,
        ),

        //<--------- password field --------->
        PasswordField(
            hint: 'Password',
            InputIcon: Icons.lock,
            controllerName: _passwordLoginController),

        SizedBox(
          height: 10,
        ),

        //<--------- anchor tag to sign up --------->
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromARGB(246, 86, 86, 86)))),
              child: Text('Forget Password?',
                  style: TextStyle(color: Color.fromARGB(246, 86, 86, 86))),
            ),
          ],
        ),

        SizedBox(
          height: 40,
        ),

        //<------------ sign in button for form ------------>
        MainButtons(
          textValue: 'Sign In',
          onclickFunction: signIn,
        ),

        SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dont have an account?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              // function that allows naviagtion to sign up page
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Registration()));
              },

              child: Text(
                ' Sign up',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(27, 117, 188, 10)),
              ),
            ),
          ],
        ),

        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 2.0,
              width: 140.0,
              color: Color.fromRGBO(170, 170, 170, 10),
            ),
            Text(
              'OR',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(170, 170, 170, 10)),
            ),
            Container(
              height: 2.0,
              width: 140.0,
              color: Color.fromRGBO(170, 170, 170, 10),
            ),
          ],
        ),

        SizedBox(
          height: 40,
        ),

        SizedBox(
          height: 14,
        ),

        //< -------------------- sign in with facebook -------------------->
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(231, 241, 248, 10),
                borderRadius: BorderRadius.circular(40)),
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 14.0,
                  backgroundImage: AssetImage('assets/images/facebook.png'),
                  backgroundColor: Colors.blue.shade50,
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Sign in with facebook',
                    style: TextStyle(
                      color: Color.fromRGBO(121, 116, 116, 10),
                      fontSize: 18,
                    )),
              ],
            ),
          ),
        ),

        SizedBox(
          height: 10,
        ),

        //< -------------------- sign in with google -------------------->
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromRGBO(231, 241, 248, 10),
                borderRadius: BorderRadius.circular(40)),
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 14.0,
                  backgroundImage: AssetImage('assets/images/sign.png'),
                  backgroundColor: Colors.blue.shade50,
                ),
                SizedBox(
                  width: 20,
                ),
                Text('Sign in with google',
                    style: TextStyle(
                      color: Color.fromRGBO(121, 116, 116, 10),
                      fontSize: 18,
                    )),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
