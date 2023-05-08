import 'package:bloc/bloc.dart';
import 'package:f_ab_study/modules/counter/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CubitState> {
  CounterCubit() : super(CunterInitState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 0; 
}
