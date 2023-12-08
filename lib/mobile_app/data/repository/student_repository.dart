import 'package:akbar_al_youm_app/mobile_app/data/datasource/firebase_datasource.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/repository/base_student_repository.dart';

class StudentRepository extends BaseStudentRepository {
  final BaseFirebaseDataSource baseFirebaseDataSource;

  StudentRepository(this.baseFirebaseDataSource);

  @override
  Future<Student> getStudentData() async {
    final result = await baseFirebaseDataSource.getStudentData();
    return result;
  }
}
