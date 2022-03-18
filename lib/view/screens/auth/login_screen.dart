import 'package:flutter/material.dart';
import 'package:tiktok/constance.dart';
import 'package:tiktok/view/screens/auth/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "TikTok clone",
                style: TextStyle(
                    fontSize: 35,
                    color: buttonColor,
                    fontWeight: FontWeight.w900),
              ),
              const Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _emailController,
                  labelText: 'Email',
                  icon: Icons.email,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _passwordController,
                  labelText: 'Password',
                  icon: Icons.lock,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: Center(
                    child: InkWell(
                        onTap: () {
                          print("login user");
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ))),
              ),
              const SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account",style: TextStyle(),),
              ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
