import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterScreen extends StatefulWidget {
  final void Function()? onTap;

  const RegisterScreen({super.key, required this.onTap});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  //* Controllers for the TexFields
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //*Logo
              Icon(Icons.lock_open_rounded,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary),

              //* SizedBox for additional height
              const SizedBox(
                height: 25,
              ),
              //* Message, App Slogan
              Text(
                "Let's create an account for you",
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),

              const SizedBox(
                height: 25,
              ),

              //*email textfield
              CustomTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false),

              const SizedBox(
                height: 25,
              ),

              //*password textfield
              CustomTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true),

              const SizedBox(
                height: 25,
              ),

              //*confirm password textfield
              CustomTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: true),

              const SizedBox(
                height: 15,
              ),

              //* sign in button
              CustomButton(onTap: () {}, text: 'Sign Up'),

              const SizedBox(
                height: 25,
              ),

              //* Already have an account? Login here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Login here',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
