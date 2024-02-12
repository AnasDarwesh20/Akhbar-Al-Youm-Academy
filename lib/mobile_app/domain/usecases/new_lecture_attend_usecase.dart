import 'package:akbar_al_youm_app/mobile_app/core/usecases/base_usecases.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/repository/base_student_repository.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/usecases/get_student_data_usecase.dart';

class NewLectureAttend extends BaseUseCases<void, NoParameters> {
  final BaseStudentRepository baseStudentRepository;

  NewLectureAttend(this.baseStudentRepository);

  @override
  Future<void> call(NoParameters parameters) async {
    return baseStudentRepository.newLectureAttend();
  }
}
