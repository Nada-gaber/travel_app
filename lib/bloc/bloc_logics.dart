import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/bloc/app_cuits.dart';
import 'package:travel_app/bloc/cubit_states.dart';
import 'package:travel_app/pages/welcome_page.dart';

class BlocLogics extends StatefulWidget {
  BlocLogics({Key? key}) : super(key: key);

  @override
  State<BlocLogics> createState() => _BlocLogicsState();
}

class _BlocLogicsState extends State<BlocLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is WelcomeState) {
          return WelcomePage();
        } else {
          return Container();
        }
      }),
    );
  }
}
