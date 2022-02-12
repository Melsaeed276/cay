import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../logics/logics.dart';
import '../../../theme/theme.dart';
import '../../../widgets/page_route.dart';
import 'sign_in.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  //final AuthService _authService = AuthService();

  var _isLoading = false;
  @override
  Widget build(BuildContext context) {
    final info = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          onChanged: () {
            //  Form.of(primaryFocus!.context!)!.save();
          },
          child: ColoredBox(
            color: Theme.of(context).backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text(
                    'Forget Password',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'By filling your email you are going to Receive an email from us that you can reset your password',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    autofocus: true,
                    validator: (value) {
                      return emailChecker(value);
                    },
                    decoration: textFormFieldDecoration(
                      borderRadius: 20,
                      label: 'Email',
                      context: context,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: info.size.width,
                    height: 45,
                    child: ElevatedButton(
                      style: buttonStyle(context),
                      onPressed: () {
                        setState(() {
                          _isLoading = true;
                        });
                        resetPasswordRequest(context);
                      },
                      child: _isLoading == false
                          ? Text(
                              'Send',
                              style: Theme.of(context).textTheme.button,
                            )
                          : FittedBox(
                              fit: BoxFit.scaleDown,
                              child: CircularProgressIndicator(
                                color:
                                    Theme.of(context).textTheme.button!.color,
                              ),
                            ),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  resetPasswordRequest(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      // var signup =
      //     await _authService.forgetPassword(emailController.text, context);
      // if (signup == true) {
      //   setState(() {
      //     _isLoading = false;
      //   });
        Navigator.of(context).pushReplacement(
            PageRouteManager(const SignInPage(), const Offset(1.0, 0.0)));
      //}
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
