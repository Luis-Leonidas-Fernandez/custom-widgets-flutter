import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc() : super(const UsersState()) {
    //Button favourite
    on<OnSelectedEvent>((event, emit)      => emit(state.copyWith(isSelected: true )));
    on<OnIsNotSelectedEvent>((event, emit) => emit(state.copyWith(isSelected: false)));
    //Button Obtener
    on<OnObtenerButtonSelectedEvent>((event, emit) => emit(state.copyWith(isActive: true)));
    on<OnIsNotObtenerButtonSelectedEvent>((event, emit) => emit(state.copyWith(isActive: false)));
  }


}
