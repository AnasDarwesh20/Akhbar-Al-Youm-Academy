// import 'package:akbar_al_youm_app/bloc/data_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class HomeScreen extends StatelessWidget {
//   DataEvent dataEvent = FetchDataEvent();
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => DataBloc()..mapEventToState(dataEvent),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter BLoC with sqflite Example'),
//         ),
//         body: BlocBuilder<DataBloc, DataState>(
//           builder: (context, state) {
//             if (state is DataInitialState) {
//               return CircularProgressIndicator();
//             } else if (state is DataLoadedState) {
//               return ListView.builder(
//                 itemCount: state.data.length,
//                 itemBuilder: (context, index) {
//                   var item = state.data[index];
//                   return ListTile(
//                     title: Text(item.name),
//                     subtitle: Text('Age: ${item.age}'),
//                   );
//                 },
//               );
//             } else if (state is DataErrorState) {
//               return Center(
//                 child: Text('Error: ${state.error}'),
//               );
//             } else {
//               return Container();
//             }
//           },
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             BlocProvider.of<DataBloc>(context).add(FetchDataEvent());
//           },
//           child: Icon(Icons.refresh),
//         ),
//       ),
//     );
//   }
// }
