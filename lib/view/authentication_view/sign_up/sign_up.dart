import 'package:flutter/material.dart';

import '../../../logics/logics.dart';
import '../../../theme/theme.dart';
import '../../../widgets/page_route.dart';
import '../../home/home.dart';
import '../widgets/background.dart';
import '../sign_in/sign_in.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static String pageRoute = 'sign_up';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  //final AuthService _authService = AuthService();

  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final info = MediaQuery.of(context);
    return Scaffold(
      body: BackGround(
        pageRoute: SignUpPage.pageRoute,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            onChanged: () {
              //  Form.of(primaryFocus!.context!)!.save();
            },
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  child: Text(
                    'Sign up',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  autocorrect: false,
                  validator: (value) {
                    return emailChecker(value);
                  },
                  decoration: textFormFieldDecoration(
                    label: 'Email',
                    hint: 'Enter your university email',
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
                    return passwordChecker(value);
                  },
                  decoration: textFormFieldDecoration(
                    label: 'Password',
                    context: context,
                  ),
                ),
                const SizedBox(
                  height: 25,
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
                      signIn(context);
                    },
                    child: _isLoading == false
                        ? Text('Sign up',
                            style: Theme.of(context).textTheme.button)
                        : CircularProgressIndicator(
                            color: Theme.of(context).textTheme.button!.color,
                          ),
                  ),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              PageRouteManager(
                                  const SignInPage(), const Offset(1.0, 0.0)));
                        },
                        child: Text(
                          'have already an account',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  signIn(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      // var signup = await _authService.signUp(
      //     emailController.text, passwordController.text, context);
      // if (signup == true) {
      //   setState(() {
      //     _isLoading = false;
      //   });
        Navigator.of(context).pushReplacement(
            PageRouteManager(MyHomePage(), const Offset(1.0, 0.0)));
     // }
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
