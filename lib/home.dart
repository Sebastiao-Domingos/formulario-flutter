import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:layout1/form.dart';
import 'package:layout1/signin.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.title),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Controlo de Visitantes".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                ),
                const Text(
                  "In this example, we are going to show you how to add a radio button and use it in groups with options in Flutter App. The radio button is an important component that can be used in the form of data input from users. See the example below.",
                  style: TextStyle(
                      fontSize: 16, wordSpacing: BorderSide.strokeAlignCenter),
                  textAlign: TextAlign.center,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(20))),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const Login()));
                          },
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Icon(Icons.login_outlined),
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                ),
                                const Text("Log In"),
                              ],
                            ),
                          )),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(20))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUp()));
                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: const Icon(Icons.roller_shades)),
                              const Text("Cadastrar - se"),
                            ],
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
