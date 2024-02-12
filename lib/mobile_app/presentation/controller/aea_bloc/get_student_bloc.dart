import 'dart:async';

import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/lectures.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/subjects.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/usecases/get_student_data_usecase.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/usecases/student_register_usecase.dart';
import 'package:akbar_al_youm_app/mobile_app/presentation/controller/aea_bloc/student_register/student_register_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'aea_event.dart';
part 'get_student_state.dart';

class GetStudentBloc extends Bloc<AeaEvent, GetStudentStates>
{
  final GetStudentDataUseCase getStudentDataUseCase ;


  GetStudentBloc(this.getStudentDataUseCase) : super(const GetStudentStates()) {
    on<GetStudentEvent>(getStudent) ;
  }

  FutureOr<void> getStudent(GetStudentEvent event , Emitter<GetStudentStates> emit) async
  {
    final result = await getStudentDataUseCase(const NoParameters()) ;

    emit(state.copyWith(
      student: result ,
    )) ;
  }

}
