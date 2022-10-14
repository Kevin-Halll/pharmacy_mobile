import 'package:flutter/material.dart';
import 'package:pharmacy_mobile/Components/login/login.dart';
import 'package:pharmacy_mobile/widgets/buttons.dart';
import 'package:pharmacy_mobile/widgets/inputField.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
          child: Column(
            children: [
              //<--------- logo --------->
              Image(image: AssetImage('assets/images/logos.png')),
              SizedBox(
                height: 20,
              ),
              Text('Register',
                  style: TextStyle(
                    color: Color.fromRGBO(14, 92, 153, 10),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 4,
              ),
              Text('Create your account',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.black)),
              SizedBox(
                height: 30,
              ),

              Container(
                child: RegistrationForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
//<------------ text controllers //------------>
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _telephoneController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _firstNameController = TextEditingController();

  //<------------ sign up in function //------------>
  signUp() {
    print(_lastNameController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
      child: Column(children: [
        //<--------- first name field --------->
        InputField(
            hint: 'First Name',
            InputIcon: Icons.person,
            controllerName: _firstNameController),

        SizedBox(
          height: 24,
        ),

        //<--------- last name field --------->
        InputField(
            hint: 'Last Name',
            InputIcon: Icons.person,
            controllerName: _lastNameController),

        SizedBox(
          height: 24,
        ),

        //<--------- Mobile number field --------->
        InputField(
            hint: 'Mobile Number',
            InputIcon: Icons.phone_android,
            controllerName: _telephoneController),

        SizedBox(
          height: 24,
        ),

        //<--------- email field --------->
        InputField(
            hint: 'Email',
            InputIcon: Icons.email,
            controllerName: _emailController),

        SizedBox(
          height: 24,
        ),

        //<--------- password field --------->
        PasswordField(
            hint: 'Password',
            InputIcon: Icons.lock,
            controllerName: _passwordController),

        SizedBox(
          height: 40,
        ),

        //<------------ sign in button for form ------------>
        MainButtons(
          textValue: 'Sign Up',
          onclickFunction: signUp,
        ),
        const SizedBox(
          height: 20,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              // function that allows naviagtion to sign in page,
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => Login()));
              },
              child: Text(
                ' Sign in',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(27, 117, 188, 10)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
