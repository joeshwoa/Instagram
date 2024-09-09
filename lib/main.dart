import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/Features/Authorization/pres/view/login.dart';
import 'package:instagram/Features/Home/pres/cubit/home_cubit.dart';
import 'package:instagram/generated/assets.dart';
import 'package:instagram/home/frist_page.dart';

//import 'home/frist_page.dart';
import 'home/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HomeCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Login(),
      ),
    );
  }
}
