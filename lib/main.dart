
import 'package:custom_widget_design/widgets/error_dialog.dart';
import 'package:custom_widget_design/presentation/pages/initial_page.dart';
import 'package:custom_widget_design/service/quizzes_service.dart';
import 'package:custom_widget_design/state/quiz/quiz_bloc.dart';
import 'package:custom_widget_design/state/users/users_bloc.dart';
import 'package:custom_widget_design/widgets/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:custom_widget_design/presentation/pages/pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  
  runApp(
    MultiBlocProvider(
      providers: [

        BlocProvider(create: (context) => QuizBloc(quizzesService: QuizzesService())),
        BlocProvider(create: (context) => UsersBloc()),
       
        
      ],

      child: const MyApp() 
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizzes Demo',
      initialRoute: 'initial',
      routes: {

        'initial'         : (BuildContext context) => const InitialPage(),
        'home'            : (BuildContext context) => const HomePage(),
        'circularProgress': (BuildContext context) => const CircularProgress(),
        'educationalCard' : (BuildContext context) => const EducationalCard(),
        'successDialog'   : (BuildContext context) => const SuccessCustomDialog(), 
        'errorDialog'     : (BuildContext context) => const ErrorCustomDialog(), 
      },
    );
  }
}

