import 'package:flutter/material.dart';
import 'package:music_listening_app/core/theme/app_pallete.dart';
import 'package:music_listening_app/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:music_listening_app/features/auth/view/widgets/custom_feild.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final EmailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    EmailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign In....",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 14,
              ),
              const SizedBox(
                height: 14,
              ),
              CustomFeild(
                hintText: "Email.... eg: xxxxxx@gmail.com",
                controller: EmailController,
              ),
              const SizedBox(
                height: 14,
              ),
              CustomFeild(
                hintText: "Password.... eg: High5555",
                controller: passwordController,
                isObsecureText: true,
              ),
              const SizedBox(
                height: 20,
              ),
              AuthGradientButton(buttonText: "Sign In", onTap: () {}),
              const SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                      text: "Don't have an account? ",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: const [
                    TextSpan(
                        text: " Sign Up",
                        style: TextStyle(
                            color: Pallete.gradient2,
                            fontWeight: FontWeight.bold))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
