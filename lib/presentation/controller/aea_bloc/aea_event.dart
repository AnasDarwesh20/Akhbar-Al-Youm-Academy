part of 'aea_bloc.dart';

abstract class AeaEvent extends Equatable {
  const AeaEvent();
}

class GetStudentEvent extends AeaEvent
{
  @override
  List<Object?> get props => [];
}
