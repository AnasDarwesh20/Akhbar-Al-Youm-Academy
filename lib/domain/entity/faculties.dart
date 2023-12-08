import 'package:akbar_al_youm_app/domain/entity/doctors.dart';
import 'package:akbar_al_youm_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/domain/entity/subjects.dart';
import 'package:equatable/equatable.dart';

class Faculties extends Equatable {
  final String name;

  final int numberOfStudents;

  final int numberOfYears;

  final List<Doctor> doctors ;
  final List<Student> students ;
  final List<Subject> subjects ;
  const Faculties({
    required this.name,
    required this.numberOfStudents,
    required this.numberOfYears,
    required this.doctors,
    required this.students,
    required this.subjects,
  });

  @override
  List<Object?> get props => [
        name,
        numberOfYears,
        numberOfStudents,
      ];
}
