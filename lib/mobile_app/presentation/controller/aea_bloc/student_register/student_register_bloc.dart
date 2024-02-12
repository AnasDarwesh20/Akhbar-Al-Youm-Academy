import 'dart:async';

import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/lectures.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/subjects.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/usecases/get_student_data_usecase.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/usecases/student_register_usecase.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/controller/aea_bloc/get_student_bloc.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/controller/aea_bloc/student_register/student_register_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


class StudentRegisterBloc extends Bloc<AeaEvent, StudentRegisterStates>
{

  final StudentRegisterUseCase studentRegisterUseCase ;

  StudentRegisterBloc(this.studentRegisterUseCase) : super(const StudentRegisterStates()) {
    on<RegisterStudentEvent>(registerStudent) ;
  }


  FutureOr<void> registerStudent(RegisterStudentEvent event , Emitter<StudentRegisterStates> emit) async
  {
    studentRegisterUseCase(event.model);
    emit(state);
  }
}
