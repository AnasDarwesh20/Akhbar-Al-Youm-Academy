
import 'package:akbar_al_youm_app/mobile_app/presentation/screens/reigester/register_screen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  var email = TextEditingController();

  var Password = TextEditingController();

  bool isPasswordShown = false;

  var formState = GlobalKey<FormState>();
  bool isLoding = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoding == true ? Center(child: CircularProgressIndicator(),) :Container(
        color: Colors.blueGrey[100],
        child: Center(
          child: Container(
            width: 350,
            height: 500,
            child: Form(
              key: formState,
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
                                controller: email,
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
                                controller: Password,
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
                                onPressed: () async {

                                  if (formState.currentState!.validate()) {try {
                                    isLoding = true ;
                                    setState(() {
                                    });
                                    final credential = await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                        email: email.text, password: Password.text);
                                    isLoding = false;
                                    setState(() {

                                    });
                                    if (credential.user!.emailVerified){
                                      Navigator.of(context).pushReplacementNamed('HomePage');
                                    }else {
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.error,
                                        animType: AnimType.rightSlide,
                                        title: 'Error',
                                        desc: 'Please open youe Email and press verfied link ',
                                        btnCancelOnPress: () {},
                                        btnOkOnPress: () {},
                                      ).show();
                                    }
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'user-not-found') {
                                      print('No user found for that email.');
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.error,
                                        animType: AnimType.rightSlide,
                                        title: 'Error',
                                        desc: 'No user found for that email.',
                                        btnCancelOnPress: () {},
                                        btnOkOnPress: () {},
                                      ).show();
                                    } else if (e.code == 'wrong-password') {
                                      print('Wrong password provided for that user.');
                                      AwesomeDialog(
                                        context: context,
                                        dialogType: DialogType.error,
                                        animType: AnimType.rightSlide,
                                        title: 'Error',
                                        desc: 'Wrong password provided for that user.',
                                        btnCancelOnPress: () {},
                                        btnOkOnPress: () {},
                                      )..show();
                                    }}}
                                  else {
                                    print ('Not valid');
                                  }},
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
