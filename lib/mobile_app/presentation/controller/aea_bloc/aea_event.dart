part of 'get_student_bloc.dart';

abstract class AeaEvent extends Equatable {
  const AeaEvent();
}

class GetStudentEvent extends AeaEvent
{
  @override
  List<Object?> get props => [];
}

class RegisterStudentEvent extends AeaEvent {
  final StudentModel model ;

  const RegisterStudentEvent(this.model);
  @override
  List<Object?> get props => [
    model ,
  ];
}
