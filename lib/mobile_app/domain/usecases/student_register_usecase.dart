import 'package:akbar_al_youm_app/mobile_app/core/usecases/base_usecases.dart';
import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/repository/base_student_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:path/path.dart';

class StudentRegisterUseCase extends BaseUseCases<void ,RegisterParameters >{
  final BaseStudentRepository baseStudentRepository ;

  StudentRegisterUseCase(this.baseStudentRepository);
  @override
  Future<void> call(RegisterParameters parameters) {
    return baseStudentRepository.registerStudent(parameters.model , context);
  }
}


class RegisterParameters extends Equatable {
  final StudentModel model ;

  const RegisterParameters(this.model);

  @override
  List<Object?> get props => [
    model ,
  ];
}