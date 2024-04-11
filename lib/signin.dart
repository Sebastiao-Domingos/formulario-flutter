import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:layout1/form.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? gender = "male";
  @override
  Widget build(BuildContext context) {
    bool checked = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        // height: 550,
        padding: const EdgeInsets.all(15),
        // decoration: BoxDecoration(
        // border: Border.all(color: Colors.black12, width: 1),
        // borderRadius: const BorderRadius.all(Radius.circular(4))),
        child: Form(
            child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: Icon(
                        Icons.description,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const Text(
                      "Cadastro",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                  child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                        labelText: "Nome completo",
                        border: OutlineInputBorder(
                            gapPadding: 3,
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                            gapPadding: 3,
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                          child: const Text("Sexo")),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: "male",
                                groupValue: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value.toString();
                                  });
                                },
                                fillColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary;
                                  }
                                  return null;
                                }),
                              ),
                              const Text("Masculino")
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Row(
                              children: [
                                Radio(
                                  fillColor: MaterialStateProperty.resolveWith(
                                      (states) {
                                    if (states
                                        .contains(MaterialState.selected)) {
                                      return Theme.of(context)
                                          .colorScheme
                                          .primary;
                                    }
                                    return null;
                                  }),
                                  value: "female",
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = value.toString();
                                    });
                                  },
                                ),
                                const Text("Femenino")
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                        labelText: "Província",
                        border: OutlineInputBorder(
                            gapPadding: 3,
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextField(
                    onChanged: (value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                        labelText: "Município",
                        border: OutlineInputBorder(
                            gapPadding: 3,
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextField(
                    onChanged: (value) {
                      print(value);
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        labelText: "Bairro",
                        border: OutlineInputBorder(
                            gapPadding: 3,
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      print(value);
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        labelText: "Senha",
                        border: OutlineInputBorder(
                            gapPadding: 3,
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: TextField(
                    obscureText: true,
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        labelText: "Confirmar a senha",
                        border: OutlineInputBorder(
                            gapPadding: 3,
                            borderRadius: BorderRadius.circular(4))),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    children: [
                      Checkbox(
                          fillColor:
                              MaterialStateProperty.resolveWith((states) {
                            if (states.contains(MaterialState.selected)) {
                              return Theme.of(context).colorScheme.primary;
                            }
                            return null;
                          }),
                          value: checked,
                          onChanged: (value) {
                            setState(() {
                              checked = value!;
                            });
                          }),
                      const Text("Aceito as vossas política.")
                    ],
                  ),
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.all(25))),
                    onPressed: () {
                      print("clicado");
                    },
                    child: const Text("Cadastrar-se")),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Login()));
                      },
                      child: const Text("Já tenho uma conta.")),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}
