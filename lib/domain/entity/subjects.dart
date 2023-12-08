import 'package:akbar_al_youm_app/domain/entity/lectures.dart';
import 'package:akbar_al_youm_app/domain/entity/student.dart';
import 'package:equatable/equatable.dart';

class Subject extends Equatable {
  final String doctor;

  final List<Lecture> lectures;

  final List<Student> students;

  const Subject({
    required this.doctor,
    required this.lectures,
    required this.students,
  });

  @override
  List<Object?> get props => [];
}
