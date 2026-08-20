import 'package:flutter/material.dart';

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
        child: Column(
          crossAxisAlignment: .start,
          spacing: 16,
          children: [
            Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
