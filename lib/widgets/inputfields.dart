import 'package:flutter/material.dart';

// normal text input field
class InputField extends StatefulWidget {
  // defining constructor properties
  final String hint;
  final controllerName;
  final IconData InputIcon;
  const InputField(
      {super.key,
      required this.hint,
      this.controllerName,
      required this.InputIcon});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controllerName,
      decoration: InputDecoration(
        prefixIcon:
            Icon(widget.InputIcon, color: Color.fromRGBO(121, 116, 116, 10)),
        hintStyle: TextStyle(color: Color.fromRGBO(121, 116, 116, 10)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        fillColor: Color.fromRGBO(231, 241, 248, 10),
        filled: true,
        hintText: widget.hint,
        isDense: true,
      ),
    );
  }
}

// password field
class PasswordField extends StatefulWidget {
  // defining constructor properties
  final String hint;
  final controllerName;
  final IconData InputIcon;
  const PasswordField(
      {super.key,
      required this.hint,
      this.controllerName,
      required this.InputIcon});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  //function that shows and hide password for password fields
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controllerName,
      obscureText: _obscureText,
      decoration: InputDecoration(
        prefixIcon:
            Icon(widget.InputIcon, color: Color.fromRGBO(121, 116, 116, 10)),

        // shows or hides password
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText
                ?

                /// Check Show & Hide.
                Icons.visibility
                : Icons.visibility_off,
            color: Color.fromRGBO(121, 116, 116, 10),
          ),
        ),
        hintStyle: TextStyle(color: Color.fromRGBO(121, 116, 116, 10)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        fillColor: Color.fromRGBO(231, 241, 248, 10),
        filled: true,
        hintText: widget.hint,
        isDense: true,
      ),
    );
  }
}
