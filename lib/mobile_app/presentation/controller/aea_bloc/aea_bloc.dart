import 'dart:async';

import 'package:akbar_al_youm_app/mobile_app/domain/entity/lectures.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/subjects.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/usecases/get_student_data_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'aea_event.dart';
part 'aea_state.dart';

class AeaBloc extends Bloc<AeaEvent, AeaStates>
{
  final GetStudentDataUseCase getStudentDataUseCase ;

  AeaBloc(this.getStudentDataUseCase) : super(const AeaStates()) {
    on<GetStudentEvent>(getStudent) ;
  }

  FutureOr<void> getStudent(GetStudentEvent event , Emitter<AeaStates> emit) async
  {
    final result = await getStudentDataUseCase() ;

    emit(state.copyWith(
      student: result ,
    )) ;
  }
}
