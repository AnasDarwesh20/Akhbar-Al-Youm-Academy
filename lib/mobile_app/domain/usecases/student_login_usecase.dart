

import 'package:akbar_al_youm_app/mobile_app/core/usecases/base_usecases.dart';
import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/repository/base_student_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:path/path.dart';

class StudentLoginUseCase extends BaseUseCases<void ,LoginParameters >{
  final BaseStudentRepository baseStudentRepository ;

  StudentLoginUseCase(this.baseStudentRepository);
  @override
  Future<void> call(LoginParameters parameters) {
    return baseStudentRepository.loginStudent(parameters.model , context);
  }
}


class LoginParameters extends Equatable {
  final StudentModel model ;

  const LoginParameters(this.model);

  @override
  List<Object?> get props => [
    model ,
  ];
}