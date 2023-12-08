import 'package:akbar_al_youm_app/domain/entity/student.dart';

abstract class BaseStudentRepository
{
  Future<Student> getStudentData() ;
}