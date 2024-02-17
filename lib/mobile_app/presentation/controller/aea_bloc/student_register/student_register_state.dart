import 'package:akbar_al_youm_app/mobile_app/domain/entity/lectures.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/subjects.dart';
import 'package:equatable/equatable.dart';

class StudentRegisterStates extends Equatable {
  final Student student;

  const StudentRegisterStates({
    this.student = const Student(
      englishName: 'name',
      arabicName: 'name',
      id: '50650',
      photo: '',
      subjects: [
        Subject(
          doctor: 'Ahmed',
          lectures: [Lecture(numberOfStudents: 3, students: [])],
          students: [],
          department: 'computer science',
          level: 1,
          term: 1,
          name: 'math',
        ),
      ],
      phoneNumber: '010338877552',
      email: '',
    ),
  });

  StudentRegisterStates copyWith({
    Student? student,
  }) {
    return StudentRegisterStates(
      student: student ?? this.student,
    );
  }

  @override
  List<Object?> get props => [
        student,
      ];
}
