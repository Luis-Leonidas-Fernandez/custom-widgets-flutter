part of 'users_bloc.dart';


class UsersState extends Equatable {

  final bool isSelected;
  final bool isActive;

  const UsersState({
    this.isSelected= false,
    this.isActive = false
  });

  UsersState copyWith({    
    bool? isSelected,
    bool? isActive
  })
  => UsersState(
    isSelected: isSelected?? this.isSelected,
    isActive: isActive?? this.isActive
    );


   @override
  List<Object> get props => [isSelected, isActive];

}


