//
// // Events
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../models/data_model.dart';
// import '../repository/d'
//     ''
//     ''
//     'ata_repository.dart';
//
// abstract class DataEvent {}
//
// class FetchDataEvent extends DataEvent {}
//
// // States
// abstract class DataState {}
//
// class DataInitialState extends DataState {}
//
// class DataLoadedState extends DataState {
//   final List<DataModel> data;
//
//   DataLoadedState(this.data);
// }
//
// class DataErrorState extends DataState {
//   final String error;
//
//   DataErrorState(this.error);
// }
//
// // BLoC
// class DataBloc extends Bloc<DataEvent, DataState> {
//   final DataRepository dataRepository = DataRepository();
//
//   DataBloc() : super(DataInitialState());
//
//   @override
//   Stream<DataState> mapEventToState(DataEvent event) async* {
//     if (event is FetchDataEvent) {
//       yield DataInitialState();
//
//       try {
//         await dataRepository.initializeDatabase();
//         final List<DataModel> data = await dataRepository.fetchData();
//         yield DataLoadedState(data);
//       } catch (e) {
//         yield DataErrorState("Error fetching data: $e");
//       }
//     }
//   }
// }
//
//
//
// // 1. bloc (state manag.)
// // 2. database - firebase - sql
// // 3.