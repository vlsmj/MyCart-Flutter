import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cart_provider/common/appbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Login',
        isCartIconVisible: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Image(
              width: 200,
              height: 200,
              image: AssetImage('assets/logo.png'),
            ),
            const SizedBox(height: 8),
            Text(
              'Login Screen',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Username',
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                context.pushReplacement('/');
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
