import 'package:admin_dashboard/providers/auth_provider.dart';
import 'package:admin_dashboard/providers/login_form_provider.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'package:admin_dashboard/router/router.dart';

import 'package:admin_dashboard/ui/buttons/custom_outlined_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:admin_dashboard/ui/inputs/custom_inputs.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return ChangeNotifierProvider(
      create: (_) => LoginFormProvider(),
      child: Builder(
        builder: (context) {
          final loginFormProvider =
              Provider.of<LoginFormProvider>(context, listen: false);
          return Container(
            margin: const EdgeInsets.only(top: 100),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 370),
                child: Form(
                    key: loginFormProvider.formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          onFieldSubmitted: (_) =>
                              onFormSubmit(loginFormProvider, authProvider),
                          validator: (value) {
                            if (!EmailValidator.validate(value ?? 'abc')) {
                              return 'Email not valid';
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) => loginFormProvider.email = value,
                          style: const TextStyle(color: Colors.white),
                          decoration: CustomInputs.loginInputDecoration(
                              hint: 'Enter your data',
                              label: 'Phone, email or username',
                              icon: Icons.email_outlined),
                        ),

                        //

                        const SizedBox(height: 20),

                        //

                        TextFormField(
                          onFieldSubmitted: (_) =>
                              onFormSubmit(loginFormProvider, authProvider),
                          validator: ((value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your password';
                            } else if (value.length < 6) {
                              return 'The password shoul be 6 or more letters';
                            }
                            return null;
                          }),
                          onChanged: (value) =>
                              loginFormProvider.password = value,
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
                          decoration: CustomInputs.loginInputDecoration(
                              hint: '*******',
                              label: 'Password',
                              icon: Icons.lock_outline_rounded),
                        ),
                        const SizedBox(height: 20),
                        CustomOutlinedButtom(
                          text: 'Next',
                          onPressed: () =>
                              onFormSubmit(loginFormProvider, authProvider),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            const Text('Don\'t you have an acccount? ',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16)),
                            LinkText(
                              color: Colors.blue,
                              text: 'Sign Up',
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, Flurorouter.registerRoute);
                              },
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
          );
        },
      ),
    );
  }

  void onFormSubmit(
      LoginFormProvider loginFormProvider, AuthProvider authProvider) {
    final isValid = loginFormProvider.validateForm();

    if (isValid) {
      authProvider.login(loginFormProvider.email, loginFormProvider.password);
    }
  }
}
