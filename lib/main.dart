<<<<<<< HEAD
import 'package:citizen/src/Controllers/controllers.dart';
import 'package:citizen/src/Models/models.dart';
import 'package:citizen/src/Views/log_main_page.dart';
import 'package:citizen/src/Views/problem_page.dart';
import 'package:citizen/src/Views/register_problem_page.dart';
=======

import 'package:citizen/src/Controllers/UserController.dart';
import 'package:citizen/src/Models/models.dart';
import 'package:flutter/material.dart';

>>>>>>> ab488a90e68e798f6a28ae9f9cbd7b79bcffe951
import 'package:citizen/src/Views/main_page.dart';

<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

=======
>>>>>>> ab488a90e68e798f6a28ae9f9cbd7b79bcffe951
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Database connection in Firebase

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyB_8IwlGph0JJQWtt_7hkx4DXnXqAC-dUM",
<<<<<<< HEAD
          authDomain: "citizendb20.firebaseapp.com",
          projectId: "citizendb20",
          storageBucket: "citizendb20.appspot.com",
          messagingSenderId: "769398598023",
          appId: "1:769398598023:web:8d3da48abaa36a74b50b22"
      )
  );

  UserController _userController = UserController();
  List<UserModel> users = await _userController.getUsers();
  ProblemController _problemController = ProblemController();
  await _problemController.getProblems();
=======
          appId: "1:769398598023:web:8d3da48abaa36a74b50b22",
          messagingSenderId: "769398598023",
          projectId: "citizendb20"));

  UserController _userController = UserController();
  List<UserModel> users = await _userController.getUsers();;
>>>>>>> ab488a90e68e798f6a28ae9f9cbd7b79bcffe951
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'VollkornSC'),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        'logmain': (context) => const LogMainPage(),
        'problemRegister': (context) => const RegisterProblemPage(),
        'problem': (context) => const ProblemPage()
      },
    );
  }
}
