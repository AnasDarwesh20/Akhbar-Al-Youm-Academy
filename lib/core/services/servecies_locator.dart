import 'package:akbar_al_youm_app/data/datasource/firebase_datasource.dart';
import 'package:akbar_al_youm_app/data/repository/student_repository.dart';
import 'package:akbar_al_youm_app/domain/repository/base_student_repository.dart';
import 'package:akbar_al_youm_app/domain/usecases/get_student_data_usecase.dart';
import 'package:akbar_al_youm_app/presentation/controller/aea_bloc/aea_bloc.dart';
import 'package:get_it/get_it.dart';

final servicesLocator = GetIt.instance;

class ServiceLocator {
  void init() {
    ///block
    servicesLocator.registerFactory(() => AeaBloc(servicesLocator()));


    ///repository
    servicesLocator.registerLazySingleton<BaseStudentRepository>(() => StudentRepository(servicesLocator())); // يكون object في مكان واحد في ال memory

    ///use cases
    servicesLocator.registerLazySingleton(() =>GetStudentDataUseCase(servicesLocator()));

    ///DATA SOURCE
    servicesLocator.registerLazySingleton<BaseFirebaseDataSource>(
            () => FirebaseDataSource());
  }
}