import 'package:akbar_al_youm_app/mobile_app/domain/entity/subjects.dart';
import 'package:equatable/equatable.dart';

class Student extends Equatable {
  final String englishName;

  final String email ;

  final String arabicName;

  final String faculty;

  final int id;

  final String photo;

  final int year;

  final List<Subject> subjects;

  final int phoneNumber  ;

  const Student({
    required this.englishName,
    required this.arabicName,
    required this.faculty,
    required this.id,
    required this.photo,
    required this.year,
    required this.subjects,
    required this.phoneNumber,
    required this.email,
  });

  @override
  List<Object?> get props => [
        englishName,
        arabicName,
        faculty,
        id,
        photo,
        year,
        subjects,
      ];
}
