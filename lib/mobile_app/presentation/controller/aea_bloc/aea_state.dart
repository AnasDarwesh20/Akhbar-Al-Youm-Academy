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
          doctor: 'Ahmed',
          lectures: [Lecture(numberOfStudents: 3, students: [])],
          students: [],
          department: 'computer science',
          level: 1,
          term: 1,
          name: 'math',
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
