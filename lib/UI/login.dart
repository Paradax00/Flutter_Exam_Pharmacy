import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _code = "";
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S'authentifier"),
        centerTitle: true,
      ),
      body: Form(
        key: _keyForm,
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 50, bottom: 50),
                child: Center(
                  child: Image.asset('assets/img/logo.png'),
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
                onChanged: (String value) {
                  _code = value;
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Ce Champs est requis";
                  } else if (value.length != 3) {
                    return "invalide format du code d'inscription";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    child: const Text('Réinitialiser'),
                    onPressed: () => {_keyForm.currentState!.reset()},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                      child: const Text("Login"),
                      onPressed: () => {postLoginApi(_code)}),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<http.Response> postLoginApi(String code) async {
    var url = 'http://10.0.2.2:9090/api/users/login';

    Map<String, dynamic> data = {'code': code};
    //encode Map to JSON
    var body = json.encode(data);
    Map<String, String> headers = {
      "Content-Type": "application/json; charset=UTF-8"
    };

    var response =
        await http.post(Uri.parse(url), headers: headers, body: body);

    print("Response statusCode : ${response.statusCode}");
    print("----------------------------------------------");
    print("Response Body : ${response.body}");

    return response;
  }
}
