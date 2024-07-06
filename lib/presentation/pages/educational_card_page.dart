// ignore_for_file: avoid_print

import 'package:custom_widget_design/constants/constants.dart';
import 'package:custom_widget_design/state/users/users_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EducationalCard extends StatefulWidget {
  const EducationalCard({super.key});

  @override
  State<EducationalCard> createState() => _CardState();
}

class _CardState extends State<EducationalCard> {

  UsersBloc? usersBloc;

  @override
  void initState() {
    super.initState();
    usersBloc = BlocProvider.of<UsersBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    final userBloc = BlocProvider.of<UsersBloc>(context);

    return Scaffold(
      appBar: AppConstants.customAppBar,
        backgroundColor: const Color.fromARGB(255, 228, 226, 226),
        body: BlocBuilder<UsersBloc, UsersState>(
          builder: (context, state) {
            return Stack(children: [
              const CardContainer(),
              addFavourite(userBloc),
              boldTittleCard(),
              boldTittleTwoCard(),
              semiboldSubtittle(),
              semiboldTwoSubtittle(),
              getCurse(userBloc)
            ]);
          },
        ));
  }
}

Widget addFavourite(UsersBloc usersBloc) {

  return Positioned(
    top: 58,
    left: 40,
    child: SizedBox(
        child: usersBloc.state.isSelected == false
            ? IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {
                  usersBloc.add(const OnSelectedEvent());
                  //usersBloc.add(const OnIsNotObtenerButtonSelectedEvent());
                },
              )
            : IconButton(
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.yellow,
                  size: 35,
                ),
                onPressed: () {
                  //
                  final active =usersBloc.state.isActive;
                  final select =usersBloc.state.isActive;
    
                  print("IS ACTIVE: $active   IS SELECTED: $select");
    
                  usersBloc.add(const OnIsNotSelectedEvent());
                  
                },
              )),
  );
}

Widget getCurse(UsersBloc usersBloc) {

  return Positioned(
    top: 298,
    left: 35,
    child: Row(
      children: [
        Container(
          width: 55,
          height: 55,
          color: Colors.transparent,
          child: ClipRRect(
            child: Image.asset(
              'assets/harvard.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 155,
        ),
        usersBloc.state.isActive == false ?
        ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(118, 204, 202, 202)),
            ),
            onPressed: () {
              usersBloc.add(const OnObtenerButtonSelectedEvent());
             
            },
            child: Text(
               "Obtener",
              style: AppConstants.h6,
            )
          )
          : ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(118, 204, 202, 202)),
            ),
            onPressed: () {
              usersBloc.add(const OnIsNotObtenerButtonSelectedEvent());
             
            },
            child: Text(
               "Inscripto",
              style: AppConstants.h6,
            )
          )
      ],
    ),
  );
}

Widget boldTittleCard() {
  return Positioned(
    top: 175,
    left: 30,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Harvard University",
          style: AppConstants.h4,
        ),
      ],
    ),
  );
}

Widget boldTittleTwoCard() {
  return Positioned(
    top: 198,
    left: 30,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "ha llegado",
          style: AppConstants.h4,
        ),
      ],
    ),
  );
}

Widget semiboldSubtittle() {
  return Positioned(
    top: 235,
    left: 30,
    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text(
        "Inscribete a nuestros cursos gratuitos",
        style: AppConstants.h5,
      ),
    ]),
  );
}

Widget semiboldTwoSubtittle() {
  return Positioned(
    top: 251,
    left: 30,
    child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Text(
        "construye tu futuro",
        style: AppConstants.h5,
      ),
    ]),
  );
}

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(children: [
        Positioned(
          top: 290,
          child: Container(
            width: 370,
            height: 70,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24)),
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 171, 115, 245),
                Color.fromARGB(223, 100, 9, 219),
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
            ),
          ),
        ),
        Positioned(
          top: 35,
          child: Container(
            width: 370,
            height: 190,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24)),
              gradient: LinearGradient(colors: [
                Color.fromARGB(223, 199, 168, 240),
                Color.fromARGB(253, 88, 18, 187),
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(24), topLeft: Radius.circular(24)),
              child: Image.asset(
                'assets/estudiante.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          top: 100,
          child: Container(
            width: 370,
            height: 190,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24)),
              gradient: LinearGradient(colors: [
                Color.fromARGB(15, 200, 169, 240),
                Color.fromARGB(255, 59, 2, 133),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
        ),
      ]),
    );
  }
}
