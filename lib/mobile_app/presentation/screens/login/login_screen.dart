import 'package:akbar_al_youm_app/mobile_app/presentation/screens/reigester/register_screen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  var id = TextEditingController();

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
                                      controller: id,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'please enter your email';
                                        } else {
                                        return null;
                                        }
                                      },
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Enter your code',
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
                                          'password',
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
                                      onPressed: () async {
                                        if (formState.currentState!
                                            .validate()) {
                                          try {
                                            setState(() {});
                                            final credential =
                                                await FirebaseAuth
                                                    .instance
                                                    .signInWithEmailAndPassword(
                                                        email: id.text,
                                                        password:
                                                            password.text);
                                            setState(() {});
                                            if (credential
                                                .user!.emailVerified) {
                                              Navigator.of(context)
                                                  .pushReplacementNamed(
                                                      'HomePage');
                                            } else {
                                              AwesomeDialog(
                                                context: context,
                                                dialogType: DialogType.error,
                                                animType: AnimType.rightSlide,
                                                title: 'Error',
                                                desc:
                                                    'Please open youe Email and press verfied link ',
                                                btnCancelOnPress: () {},
                                                btnOkOnPress: () {},
                                              ).show();
                                            }
                                          } on FirebaseAuthException catch (e) {
                                            if (e.code == 'user-not-found') {
                                              print(
                                                  'No user found for that email.');
                                              AwesomeDialog(
                                                context: context,
                                                dialogType: DialogType.error,
                                                animType: AnimType.rightSlide,
                                                title: 'Error',
                                                desc:
                                                    'No user found for that email.',
                                                btnCancelOnPress: () {},
                                                btnOkOnPress: () {},
                                              ).show();
                                            } else if (e.code ==
                                                'wrong-password') {
                                              print(
                                                  'Wrong password provided for that user.');
                                              AwesomeDialog(
                                                context: context,
                                                dialogType: DialogType.error,
                                                animType: AnimType.rightSlide,
                                                title: 'Error',
                                                desc:
                                                    'Wrong password provided for that user.',
                                                btnCancelOnPress: () {},
                                                btnOkOnPress: () {},
                                              )..show();
                                            }
                                          }
                                        } else {
                                          print('Not valid');
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
