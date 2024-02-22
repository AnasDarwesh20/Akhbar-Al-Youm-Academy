import 'package:akbar_al_youm_app/mobile_app/core/services/servecies_locator.dart';
import 'package:akbar_al_youm_app/mobile_app/core/style/widgets_components/widgets_default_components.dart';
import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/controller/aea_bloc/get_student_bloc.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/controller/aea_bloc/student_register/student_register_bloc.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/controller/aea_bloc/student_register/student_register_state.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/screens/login/login_screen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
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

  var englishName = TextEditingController();

  var id = TextEditingController();

  var arabicName = TextEditingController();

  var phoneController = TextEditingController();

  bool isPasswordShown = true;

  String? gender;

  String? major;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => servicesLocator<StudentRegisterBloc>(),
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
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text("Chose your major",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      const SizedBox(
                        height: 10.0,
                      ),

                      Column(
                        children: [
                          RadioListTile(
                            title: const Text("Doctor"),
                            value: "Doctor",
                            groupValue: major,
                            onChanged: (value) {
                              setState(() {
                                major = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("Student"),
                            value: "Student",
                            groupValue: major,
                            onChanged: (value) {
                              setState(() {
                                major = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 35,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text(
                              "Full Name in English",
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          controller: englishName,
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
                        height: 10.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 35,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text(
                              "Full Name in Arabic",
                            ),
                            prefixIcon: Icon(
                              Icons.perm_identity_rounded,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          controller: arabicName,
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
                        height: 10.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 35,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text(
                              "Student code",
                            ),
                            prefixIcon: Icon(
                              Icons.code_rounded,
                            ),
                            border: OutlineInputBorder(),
                          ),
                          controller: id,
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
                        height: 10.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 35,
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
                        height: 10.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 35,
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
                        height: 10.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text("Chose your grand",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Column(
                        children: [
                          RadioListTile(
                            title: const Text("Male"),
                            value: "male",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                          RadioListTile(
                            title: const Text("Female"),
                            value: "female",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      registerButomn(),
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
            function: () {
              if (formState.currentState!.validate()) {
                context.read<StudentRegisterBloc>().add(
                      RegisterStudentEvent(
                        StudentModel(
                          englishName: englishName.text,
                          arabicName: arabicName.text,
                          id: id.text,
                          photo: '',
                          subjects: const [],
                          phoneNumber: phoneController.text,
                          email: email.text,
                        ),
                      ),
                    );
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.rightSlide,
                  title: 'Success',
                  desc: 'Register successfully',
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),)) ;
                  },
                ).show();
              }
            },
          );
        },
      );
}
