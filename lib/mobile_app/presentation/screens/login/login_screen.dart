
import 'package:akbar_al_youm_app/mobile_app/presentation/screens/reigester/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool isPasswordShown = false;

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[100],
        child: Center(
          child: Container(
            width: 350,
            height: 500,
            child: Form(
              key: formKey,
              child: Card(
                color: Colors.grey[200],
                margin: EdgeInsets.all(20.0),
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
                                .headline1
                                ?.copyWith(
                              fontSize: 60.0,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
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
                              SizedBox(width: 5,) ,
                              Text(
                                'o',
                              ),
                              SizedBox(width: 5,) ,
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.black26,
                                  height: 1.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Column(
                            children: [
                              TextFormField(
                                controller: emailController,
                                validator: (value) {
                                  if (value!.isEmpty)
                                    return 'please enter your email';
                                },
                                decoration: InputDecoration(
                                  label: Text(
                                    'email',
                                  ),
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.mail_outline_outlined,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              TextFormField(
                                controller: passwordController,
                                validator: (value) {
                                  if (value!.isEmpty)
                                    return 'please enter your password';
                                },
                                obscureText:
                                isPasswordShown ? false : true,
                                decoration: InputDecoration(
                                  label: Text(
                                    'password',
                                  ),
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
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
                              SizedBox(
                                height: 15.0,
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    print(emailController.text);
                                    print(passwordController.text);

                                  }
                                },
                                child: Text(
                                  'login',
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Don't have an account ?",
                                  ),
                                  Expanded(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),)) ;
                                      },
                                      child: Text(
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
