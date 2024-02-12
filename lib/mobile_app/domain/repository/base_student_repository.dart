
import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';

abstract class BaseStudentRepository
{
  Future<Student> getStudentData() ;
  Future<void> registerStudent(StudentModel model , context) ;
  Future<void> loginStudent(StudentModel model , context) ;

  Future<void> newLectureAttend() ;
}