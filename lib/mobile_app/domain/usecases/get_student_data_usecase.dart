import 'package:akbar_al_youm_app/mobile_app/core/usecases/base_usecases.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/repository/base_student_repository.dart';
import 'package:equatable/equatable.dart';

class GetStudentDataUseCase extends BaseUseCases<Student , NoParameters> {
  final BaseStudentRepository baseStudentRepository;

  GetStudentDataUseCase(this.baseStudentRepository);

  @override
  Future<Student> call(NoParameters parameters) async {
    return await baseStudentRepository.getStudentData();
  }
}

class NoParameters extends Equatable {
  const NoParameters();

  @override
  List<Object?> get props => [];
}
