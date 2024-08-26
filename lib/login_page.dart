import 'package:flutter/material.dart';
import 'admin_register.dart'; // Import admin registration page
import 'user_register.dart';  // Import user registration page

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    // Implement your login logic here
    final email = _emailController.text;
    final password = _passwordController.text;
    
    // For now, just print the credentials
    print('Email: $email');
    print('Password: $password');
    
    // Navigate to home or any other page after successful login
    // Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView( // To avoid overflow on smaller screens
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Add Image
                Image.network(
                  'https://static.vecteezy.com/system/resources/previews/005/544/718/non_2x/profile-icon-design-free-vector.jpg',
                  height: 150,
                  width: 150,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error, size: 150);
                  },
                ),
                const SizedBox(height: 20),
                
                const Text(
                  'XYZ',
                  style: TextStyle(fontSize: 24),
                ),
                
                const SizedBox(height: 20),
                
                // Login Form
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                
                ElevatedButton(
                  onPressed: _login,
                  child: const Text('Login'),
                ),
                
                const SizedBox(height: 20),
                
                // Registration Buttons
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdminRegisterPage(),
                      ),
                    );
                  },
                  child: const Text('Register as Admin'),
                ),
                const SizedBox(height: 10),
                const Text(
                  'or',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserRegisterPage(),
                      ),
                    );
                  },
                  child: const Text('Register as User'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}