import 'package:flutter/material.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: const Text("Recuperar a palavra passe"),
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30),
          width: 400,
          height: 240,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: const Text("Digite o email associada a tua conta.")),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: const Text("Email")),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 15),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).colorScheme.primary),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(25))),
                      onPressed: null,
                      child: const Text(
                        "Enviar",
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
