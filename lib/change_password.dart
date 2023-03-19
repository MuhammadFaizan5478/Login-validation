import 'package:flutter/material.dart';

void main() {}

///// ignore: camel_case_types
class changepass extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _oldpasswordController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  late final String _oldpassword;
  late final String _newpassword;
  late final String _confirmpassword;

  changepass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a old password';
                      }
                      if (value.length < 8) {
                        return 'Old Password must be at least 8 characters';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _oldpassword = value!;
                    },
                    controller: _oldpasswordController,
                    obscureText: true,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Old Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (value.length < 8) {
                        return 'Old Password must be at least 8 characters';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _newpassword = value!;
                    },
                    controller: _passwordController,
                    obscureText: true,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'New Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a password';
                      }
                      if (value != _passwordController.text) {
                        return 'Password does not match with new password';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _confirmpassword = value!;
                    },
                    controller: _confirmpasswordController,
                    obscureText: true,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Confirm Your Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        Navigator.pushNamed(context, '/login');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Update Password',
                        style: TextStyle(
                          height: 1.0,
                          fontFamily: 'Montserrat',
                          fontSize: 16.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
