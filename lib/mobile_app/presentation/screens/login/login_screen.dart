import 'package:akbar_al_youm_app/mobile_app/presentation/screens/home_screen.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/screens/reigester/register_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  var email = TextEditingController();

  var password = TextEditingController();

  bool isPasswordShown = false;

  var formState = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading == true
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              color: Colors.blueGrey[100],
              child: Center(
                child: SizedBox(
                  width: 350,
                  height: 500,
                  child: Form(
                    key: formState,
                    child: Card(
                      color: Colors.grey[200],
                      margin: const EdgeInsets.all(20.0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      elevation: 5.0,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Login',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge
                                      ?.copyWith(
                                        fontSize: 60.0,
                                        color: Colors.black,
                                      ),
                                ),
                                const SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        color: Colors.black26,
                                        height: 1.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'o',
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        color: Colors.black26,
                                        height: 1.0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Column(
                                  children: [
                                    TextFormField(
                                      controller: email,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'please enter your email';
                                        } else {
                                          return null;
                                        }
                                      },
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Email',
                                        ),
                                        border: OutlineInputBorder(),
                                        prefixIcon: Icon(
                                          Icons.code_rounded,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    TextFormField(
                                      controller: password,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'please enter your password';
                                        } else {
                                          return null;
                                        }
                                      },
                                      obscureText:
                                          isPasswordShown ? false : true,
                                      decoration: InputDecoration(
                                        label: const Text(
                                          'Code',
                                        ),
                                        border: const OutlineInputBorder(),
                                        prefixIcon: const Icon(
                                          Icons.lock_open_outlined,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            isPasswordShown
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              isPasswordShown =
                                                  !isPasswordShown;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    OutlinedButton(
                                      onPressed: () {
                                        if (formState.currentState!
                                            .validate()) {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const HomeScreenState(),
                                              ));
                                        }
                                      },
                                      child: const Text(
                                        'login',
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Text(
                                          "Don't have an account ?",
                                        ),
                                        Expanded(
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        RegisterScreen(),
                                                  ));
                                            },
                                            child: const Text(
                                              'register now ...',
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
