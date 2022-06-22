// ignore_for_file: deprecated_member_use

import 'package:atv3/itens//app_style.dart';
import 'package:atv3/pag/home.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _repetirsenhaController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _nomepetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _containerBody(context),
    );
  }

  _containerBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, bottom: 35),
            child: const Text(
              "Cadastro",
              style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          TextFormField(
            controller: _emailController,
            style: const TextStyle(fontSize: 18),
            decoration: AppStyle.textFieldDecoration(
                labelText: "E-mail", hintText: "Digite seu e-mail"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TextFormField(
              controller: _nomeController,
              style: const TextStyle(fontSize: 18),
              decoration: AppStyle.textFieldDecoration(
                  labelText: "Nome", hintText: "Digite seu nome"),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TextFormField(
              controller: _nomepetController,
              style: const TextStyle(fontSize: 18),
              decoration: AppStyle.textFieldDecoration(
                  labelText: "Pet", hintText: "Digite o nome do seu pet"),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TextFormField(
              controller: _senhaController,
              obscureText: true,
              style: const TextStyle(fontSize: 18),
              decoration: AppStyle.textFieldDecoration(
                  labelText: "Senha", hintText: "Digite sua senha"),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TextFormField(
              controller: _repetirsenhaController,
              obscureText: true,
              style: const TextStyle(fontSize: 18),
              decoration: AppStyle.textFieldDecoration(
                  labelText: "Repetir Senha",
                  hintText: "Digite sua senha novamente"),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, bottom: 15),
            child: RaisedButton(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              textColor: Colors.white,
              color: Colors.redAccent,
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: const Text(
                "Salvar",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
