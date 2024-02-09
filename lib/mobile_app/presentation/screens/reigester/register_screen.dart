

import 'package:akbar_al_youm_app/mobile_app/core/style/widgets_components/widgets_default_components.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var nameController = TextEditingController();

  var phoneController = TextEditingController();

  bool isPasswordShown = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'REGISTER',
                      style:
                      Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'register now and communicate with others ',
                      style:
                      Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text(
                            "Name"  ,
                          ) ,
                          prefixIcon: Icon(
                            Icons.person ,
                          ) ,
                          border: OutlineInputBorder(),
                        ),
                        controller: nameController,
                        validator: (String ?value)
                        {
                          if(value!.isEmpty)
                            return'Name must not be empty' ;
                        },
                      ) ,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: DefaultComponents.defaultFormField(
                        textInputType: isPasswordShown
                            ? TextInputType.visiblePassword
                            : TextInputType.emailAddress,
                        function: (String value) {
                          if (value.isEmpty) {
                            return 'password must not be empty';
                          }
                        },
                        isPasswordShown: isPasswordShown,
                        prefixIcon: Icons.lock_outline_rounded,
                        suffixIcon: IconButton(
                          icon: Icon(
                            isPasswordShown
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                          onPressed: () {
                            setState(() {
                              isPasswordShown = !isPasswordShown;
                            });
                          },
                        ),
                        onSubmit: (value) {},
                        controller: passwordController,
                        lable: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text(
                            "Email"  ,
                          ) ,
                          prefixIcon: Icon(
                            Icons.mail ,
                          ) ,
                          border: OutlineInputBorder(),
                        ),
                        controller: emailController,
                        validator: (String? value)
                        {
                          if(value!.isEmpty)
                            return'Email must not be empty' ;
                        },
                      ) ,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          label: Text(
                            "phone"  ,
                          ) ,
                          prefixIcon: Icon(
                            Icons.phone ,
                          ) ,
                          border: OutlineInputBorder(),
                        ),
                        controller: phoneController,
                        validator: (String? value)
                        {
                          if(value!.isEmpty)
                            return'Phone must not be empty' ;
                        },
                      ) ,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    DefaultComponents.butomn(
                      text: 'Register ',
                      isUpper: true,
                      function: () {
                        if (formKey.currentState!.validate()) {

                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
