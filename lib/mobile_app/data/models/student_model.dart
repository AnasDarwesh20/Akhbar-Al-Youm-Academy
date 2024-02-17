import 'package:akbar_al_youm_app/mobile_app/domain/entity/student.dart';
import 'package:akbar_al_youm_app/mobile_app/domain/entity/subjects.dart';

class StudentModel extends Student {
  const StudentModel({
    required super.englishName,
    required super.arabicName,
    required super.id,
    required super.photo,
    required super.subjects,
    required super.phoneNumber,
    required super.email,
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
      arabicName: data['name'],
      id: data['id'],
      photo: data['photo'],
      subjects: subjects,
      phoneNumber: data['phone_number'],
      englishName: data['english_name'],
      email: data['email'],
    );
  }

  Map<String , dynamic> toMap() => {
    'english_name' : englishName ,
    'arabic_name' : arabicName ,
    'id' : id ,
    'photo' : photo ,
    'subjects' : subjects ,
    'phone_number' : phoneNumber ,
    'email' : email ,
  } ;
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
