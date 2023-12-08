import 'package:akbar_al_youm_app/mobile_app/domain/entity/faculties.dart';
import 'package:equatable/equatable.dart';

class Doctor extends Equatable {
  final String name;

  final int id;

  final String photo;

  final String subject;

  final int age;

  final List<Faculties> faculties;

  const Doctor({
    required this.name,
    required this.id,
    required this.photo,
    required this.subject,
    required this.faculties,
    required this.age,
  });

  @override
  List<Object?> get props => [
        name,
        age,
        photo,
        subject,
        faculties,
        id,
      ];
}
