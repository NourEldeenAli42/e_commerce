import 'package:flutter/material.dart';

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class LoginView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(
            'Select Country',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.language),
        ],
        title: const Text(
          'Verve',
          style: TextStyle(fontSize: 24, fontWeight: .bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: 16,
            children: [
              Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextFormField(
                validator: (value) =>
                    value!.isEmpty ? 'Please enter your email' : null,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                obscureText: true,
                validator: (value) =>
                    value!.isEmpty ? 'Please enter your password' : null,
                decoration: const InputDecoration(
                  hint: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text('Password'),
                      Icon(Icons.visibility_outlined),
                    ],
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                    materialTapTargetSize: .shrinkWrap,
                  ),
                  SizedBox(width: 8),
                  Text('Remember Me'),
                  Spacer(),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor:
                      Theme.of(context).colorScheme.brightness ==
                          Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, '/main');
                  }
                },
                child: const Text('Login'),
              ),
              Divider(thickness: 2),
              Text(
                'New to Verve?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
