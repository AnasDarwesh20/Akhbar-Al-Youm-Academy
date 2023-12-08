
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';

abstract class BaseStudentRepository
{
  Future<Student> getStudentData() ;
}