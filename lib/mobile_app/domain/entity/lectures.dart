import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:equatable/equatable.dart';

class Lecture extends Equatable {
  final int numberOfStudents;

  final List<Student> students;

  const Lecture({
    required this.numberOfStudents,
    required this.students,
  });

  @override
  List<Object?> get props => [
    numberOfStudents ,
    students ,
  ];
}
