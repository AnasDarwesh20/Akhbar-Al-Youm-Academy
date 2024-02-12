import 'package:akbar_al_youm_app/mobile_app/core/style/widgets_components/widgets_default_components.dart';
import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/usecases/student_register_usecase.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/controller/aea_bloc/get_student_bloc.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/controller/aea_bloc/student_register/student_register_bloc.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/controller/aea_bloc/student_register/student_register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formState = GlobalKey<FormState>();

  var email = TextEditingController();

  var password = TextEditingController();

  var username = TextEditingController();

  var phoneController = TextEditingController();

  bool isPasswordShown = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StudentRegisterBloc(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formState,
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'REGISTER',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: Colors.black,
                            ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'register now and communicate with others ',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.grey[400],
                            ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text(
                              "Name",
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          controller: username,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Name must not be empty';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: DefaultComponents.defaultFormField(
                          textInputType: isPasswordShown
                              ? TextInputType.visiblePassword
                              : TextInputType.emailAddress,
                          function: (String? value) {
                            if (value!.isEmpty) {
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
                          controller: password,
                          lable: 'Password',
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text(
                              "Email",
                            ),
                            prefixIcon: Icon(
                              Icons.mail,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          controller: email,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Email must not be empty';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text(
                              "phone",
                            ),
                            prefixIcon: Icon(
                              Icons.phone,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          controller: phoneController,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Phone must not be empty';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget registerButomn() =>
      BlocBuilder<StudentRegisterBloc, StudentRegisterStates>(
        builder: (BuildContext context, StudentRegisterStates state) {
          return DefaultComponents.butomn(
            text: 'Register ',
            isUpper: true,
            function: () async {
              if (formState.currentState!.validate()) {
                context.read<StudentRegisterBloc>().add(
                      RegisterStudentEvent(
                        RegisterParameters(StudentModel(
                          englishName: ,
                          arabicName: ,
                          faculty: ,
                          id: ,
                          photo: ,
                          year: ,
                          subjects: ,
                          phoneNumber: ,
                          email: ,))
                      ),
                    );
              }
            },
          );
        },
      );
}
