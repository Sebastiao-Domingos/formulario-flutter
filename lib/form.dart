import 'package:flutter/material.dart';
import 'package:layout1/resetpass.dart';
import 'package:layout1/signin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    String email = "";
    String senha = "";
    return Scaffold(
        appBar: AppBar(
          title: const Text("Log in"),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(15),
            height: 400,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                border: Border.all(color: Colors.black12, width: .2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                        child: Icon(
                          Icons.person_2,
                          color: Theme.of(context).colorScheme.primary,
                          size: 30,
                        )),
                    const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                TextField(
                    onChanged: (value) {
                      setState(() {
                        email = senha;
                      });
                    },
                    decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(3))))),
                TextField(
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      senha = value;
                    });
                  },
                  decoration: const InputDecoration(
                      labelText: "Senha",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)))),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (email.contains("@")) {
                      print("Email : $email \nSenha : $senha");
                    } else {
                      print("Email invalido");
                    }
                  },
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  style: ButtonStyle(
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.all(25)),
                      backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.primary)),
                ),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.transparent)),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: const Text("Não tenho conta.")),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.transparent)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ResetPass(),
                      ));
                    },
                    child: const Text("Esqueceu a palavra passe?"))
              ],
            ),
          ),
        ));
  }
}
