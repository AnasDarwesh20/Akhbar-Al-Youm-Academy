import 'package:akbar_al_youm_app/domain/entity/subjects.dart';
import 'package:equatable/equatable.dart';

class Student extends Equatable {
  final String name;

  final int age;
  final String faculty;

  final int id;

  final String photo;

  final int year;

  final List<Subject> subjects;

  const Student({
    required this.name,
    required this.age,
    required this.faculty,
    required this.id,
    required this.photo,
    required this.year,
    required this.subjects,
  });

  @override
  List<Object?> get props => [
        name,
        age,
        faculty,
        id,
        photo,
        year,
        subjects,
      ];
}
