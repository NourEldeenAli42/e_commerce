import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verve',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          Text(
            'Select Country',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.language),
        ],
        actionsPadding: .all(18),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: 16,
          children: [
            Text(
              'I\'m new here',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email address',
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Date of Birth',
                suffixIcon: Icon(Icons.calendar_today),
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password (6-12 characters)',
                suffixIcon: Icon(Icons.visibility_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            Divider(thickness: 2),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {},
                  materialTapTargetSize: .shrinkWrap,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Yes, keep me informed via email about the latest trends and special offers. ',
                        ),
                        TextSpan(
                          text: '(not mandatory)',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor:
                    Theme.of(context).colorScheme.brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
              onPressed: null,
              child: const Text('Register'),
            ),
            Spacer(),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'By signing up, you agree to our '),
                  TextSpan(
                    text: 'Terms of Service',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  TextSpan(text: ' and '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
