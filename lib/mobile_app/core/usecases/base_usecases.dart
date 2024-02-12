import 'package:akbar_al_youm_app/mobile_app/data/models/student_model.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCases<data , Parameters> {
  Future<data> call(Parameters parameters);
}

