import 'package:akbar_al_youm_app/mobile_app/domain/entity/lectures.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:equatable/equatable.dart';

class Subject extends Equatable {

  final String department;

  final int level;

  final String name ;

  final int term;

  final String doctor;

  final List<Lecture> lectures;

  final List<Student> students;

  const Subject( {
    required this.doctor,
    required this.lectures,
    required this.students,
    required this.department,
    required this.level,
    required this.term,
    required this.name,
  });

  @override
  List<Object?> get props => [
    department ,
    level ,
    term ,
    doctor ,
    lectures ,
    students ,
  ];
}
