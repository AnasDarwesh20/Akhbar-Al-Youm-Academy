part of 'get_student_bloc.dart';

class GetStudentStates extends Equatable {
  final Student student;


  const GetStudentStates({
    this.student = const Student(
      englishName: 'name',
      arabicName: 'name',
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
      ], phoneNumber: 010338877552, email: '',
    ),
  });

  GetStudentStates copyWith({
    Student? student,
  }) {
    return GetStudentStates(
      student: student ?? this.student,
    );
  }

  @override
  List<Object> get props => [
        student,
      ];
}
