
import 'package:akbar_al_youm_app/mobile_app/core/usecases/base_usecases.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/repository/base_student_repository.dart';

class GetStudentDataUseCase extends BaseUseCases<Student>
{
  final BaseStudentRepository baseStudentRepository ;

  GetStudentDataUseCase(this.baseStudentRepository) ;

  @override
  Future<Student> call() async {
 return await baseStudentRepository.getStudentData();
  }
}