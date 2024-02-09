import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/subjects.dart';

class StudentModel extends Student {
  const StudentModel({
    required super.name,
    required super.age,
    required super.faculty,
    required super.id,
    required super.photo,
    required super.year,
    required super.subjects,
  });

  factory StudentModel.fromFireStore(
    Map<String, dynamic> data,
  ) {
    // Convert the list of maps representing posts to a list of Post objects
    List<SubjectModel> subjects =
        (data['subjects'] as List<Map<String, dynamic>>?)?.map((subjectData) {
              return SubjectModel.fromFireStore(subjectData);
            }).toList() ??
            [];

    return StudentModel(
      name: data['name'],
      age: data['age'],
      faculty: data['faculty'],
      id: data['id'],
      photo: data['photo'],
      year: data['year'],
      subjects: subjects,
    );
  }
}

class SubjectModel extends Subject {
  const SubjectModel({
    required super.doctor,
    required super.lectures,
    required super.students,
    required super.department,
    required super.level,
    required super.term,
    required super.name,
  });

  factory SubjectModel.fromFireStore(Map<String, dynamic> data) => SubjectModel(
        doctor: data['doctor'],
        lectures: data['lectures'],
        students: data['students'],
        department: 'department',
        level: data['level'],
        term: data['term'],
        name: 'name',
      );
}
