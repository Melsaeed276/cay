import 'package:flutter/material.dart';

import '../../../logics/logics.dart';
import '../../../services/auth_service/auth_service.dart';
import '../../../theme/text_field_theme.dart';
import '../../../theme/theme.dart';
import '../../../widgets/page_route.dart';
import '../../view.dart';
import '../sign_up/sign_up.dart';
import '../widgets/background.dart';
import 'forget_password.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  static String pageRoute = 'sign_in';

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  final AuthService _authService = AuthService();
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final info = MediaQuery.of(context);

    return Scaffold(
      body: BackGround(
        pageRoute: SignInPage.pageRoute,
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          onChanged: () {
            Form.of(primaryFocus!.context!)!.save();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Text(
                    'Sign in',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value) {
                    return emailChecker(value);
                  },
                  autocorrect: false,
                  decoration: textFormFieldDecoration(
                    borderRadius: 20,
                    label: 'Email',
                    hint: 'Enter your email',
                    context: context,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                  obscureText: true,
                  autocorrect: false,
                  autofocus: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else {
                      return null;
                    }
                  },
                  decoration: textFormFieldDecoration(
                    borderRadius: 20,
                    label: 'Password',
                    hint: 'Enter your Password',
                    context: context,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(PageRouteManager(
                            const ForgetPassword(), const Offset(1.0, 0.0)));
                      },
                      child: Text(
                        'forget password',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: info.size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: buttonStyle(context),
                    onPressed: () {
                      setState(() {
                        _isLoading = true;
                      });
                      signUp(context);
                    },
                    child: _isLoading == false
                        ? Text(
                            'Sign in',
                            style: Theme.of(context).textTheme.button,
                          )
                        : CircularProgressIndicator(
                            color: Theme.of(context).textTheme.button!.color,
                          ),
                  ),
                ),
                SizedBox(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(PageRouteManager(
                          const SignUpPage(), const Offset(0.0, -1.0)));
                    },
                    child: Text(
                      'Create a new account',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  signUp(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var signup = await _authService.signIn(
          emailController.text, passwordController.text, context);
      if (signup == true) {
        setState(() {
          _isLoading = false;
        });
        Navigator.of(context).pushReplacement(
            PageRouteManager(const MyHomePage(), const Offset(1.0, 0.0)));
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Check your information')),
      );
    }
  }
}
