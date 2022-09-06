import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/buttons/custom_outlined_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 370),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                // validator: ((value) => )
                style: const TextStyle(color: Colors.white),
                decoration: buildInputDecoration(
                    hint: 'Enter your name',
                    label: 'Name',
                    icon: Icons.supervised_user_circle_sharp),
              ),
              const SizedBox(height: 20),
              TextFormField(
                // validator: ((value) => )
                style: const TextStyle(color: Colors.white),
                decoration: buildInputDecoration(
                    hint: 'Enter your data',
                    label: 'Phone, email or username',
                    icon: Icons.email_outlined),
              ),
              const SizedBox(height: 20),
              TextFormField(
                // validator: ((value) => ),
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: buildInputDecoration(
                    hint: '*******',
                    label: 'Password',
                    icon: Icons.lock_outline_rounded),
              ),
              const SizedBox(height: 20),
              const CustomOutlinedButtom(text: 'Create account'),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text('Have you an account already? ',
                      style: TextStyle(color: Colors.grey, fontSize: 16)),
                  LinkText(
                    color: Colors.blue,
                    text: 'Login',
                    onPressed: () {
                      Navigator.pushNamed(context, Flurorouter.loginRoute);
                    },
                  )
                ],
              )
            ],
          )),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(0.3))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white.withOpacity(0.3)),
        ),
        hintText: hint,
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.grey),
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: Colors.grey));
  }
}
