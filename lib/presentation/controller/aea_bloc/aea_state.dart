part of 'aea_bloc.dart';

class AeaStates extends Equatable {
  final Student student;

  const AeaStates({
    this.student = const Student(
      name: 'name',
      age: 50,
      faculty: '',
      id: 50650,
      photo: '',
      year: 3,
      subjects: [
        Subject(
          doctor: 'doctor',
          lectures: [Lecture(numberOfStudents: 3, students: [])],
          students: [],
        ),
      ],
    ),
  });

  AeaStates copyWith({
    Student? student,
  }) {
    return AeaStates(
      student: student ?? this.student,
    );
  }

  @override
  List<Object> get props => [
        student,
      ];
}
