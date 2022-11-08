import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:admin_dashboard/providers/register_form_provider.dart';

import 'package:email_validator/email_validator.dart';

import 'package:admin_dashboard/router/router.dart';

import 'package:admin_dashboard/ui/buttons/custom_outlined_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:admin_dashboard/ui/inputs/custom_inputs.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => RegisterFormProvider(),
        builder: (context, child) {
          final registerFormProvider =
              Provider.of<RegisterFormProvider>(context, listen: false);
          return Container(
            margin: const EdgeInsets.only(top: 50),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 370),
                child: Form(
                    key: registerFormProvider.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: ((value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length <= 1) {
                              return "Name is required";
                            } else {
                              return null;
                            }
                          }),
                          onChanged: ((value) {
                            registerFormProvider.name = value;
                          }),
                          style: const TextStyle(color: Colors.white),
                          decoration: CustomInputs.loginInputDecoration(
                              hint: 'Enter your name',
                              label: 'Name',
                              icon: Icons.supervised_user_circle_sharp),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          validator: (value) {
                            if (!EmailValidator.validate(value ?? "abc")) {
                              return "Email not valid";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) =>
                              registerFormProvider.email = value,
                          style: const TextStyle(color: Colors.white),
                          decoration: CustomInputs.loginInputDecoration(
                              hint: 'Enter your data',
                              label: 'Phone, email or username',
                              icon: Icons.email_outlined),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter the password";
                            } else if (value.length < 6) {
                              return "Your passoword should be longer than 6 characters";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) =>
                              registerFormProvider.password = value,
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
                          decoration: CustomInputs.loginInputDecoration(
                              hint: '*******',
                              label: 'Password',
                              icon: Icons.lock_outline_rounded),
                        ),
                        const SizedBox(height: 20),
                        CustomOutlinedButtom(
                          text: 'Create account',
                          onPressed: () {
                            final validForm =
                                registerFormProvider.validateForm();
                            if (!validForm) return;

                            final authProvider = Provider.of<AuthProvider>(
                                context,
                                listen: false);

                            authProvider.register(
                                registerFormProvider.email,
                                registerFormProvider.password,
                                registerFormProvider.name);
                          },
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Text('Have you an account already? ',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16)),
                            LinkText(
                              color: Colors.blue,
                              text: 'Login',
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Flurorouter.loginRoute);
                              },
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
          );
        });
  }
}
