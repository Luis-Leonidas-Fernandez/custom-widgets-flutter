part of 'users_bloc.dart';


abstract class UsersEvent extends Equatable {

  const UsersEvent();

   @override
  List<Object?> get props => [];
}

class OnSelectedEvent extends UsersEvent{  
  const OnSelectedEvent();
}

class OnIsNotSelectedEvent extends UsersEvent{  
  const OnIsNotSelectedEvent();
}

class OnObtenerButtonSelectedEvent extends UsersEvent{  
  const OnObtenerButtonSelectedEvent();
}

class OnIsNotObtenerButtonSelectedEvent extends UsersEvent{  
  const OnIsNotObtenerButtonSelectedEvent();
}
