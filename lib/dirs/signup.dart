import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Form',
      home: SignUpPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  String? _submittedName;
  String? _submittedEmail;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _submittedName = _nameController.text;
        _submittedEmail = _emailController.text;
      });
      // You can add API call or further logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('One Page Sign Up')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'Name'),
                    validator:
                        (value) =>
                            value == null || value.isEmpty
                                ? 'Enter your name'
                                : null,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                    validator:
                        (value) =>
                            value == null || !value.contains('@')
                                ? 'Enter a valid email'
                                : null,
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ),
            if (_submittedName != null && _submittedEmail != null) ...[
              SizedBox(height: 40),
              Divider(),
              Text(
                '✅ Sign Up Successful!',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
              SizedBox(height: 10),
              Text('Name: $_submittedName'),
              Text('Email: $_submittedEmail'),
            ],
          ],
        ),
      ),
    );
  }
}
