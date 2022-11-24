import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  //var
  GlobalKey<FormState> formKey = GlobalKey();

  late String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Réinitialiser le Mot de Passe"),
      ),
      body: ListView(
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Image.asset("assets/images/minecraft.jpg",
                  width: 460, height: 215)),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 50, 10, 10),
            child: TextFormField(
              onSaved: (newValue) {
                username = newValue!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "username cannot be empty";
                }
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Username"),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 30, 10, 10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Information"),
                        content: Text(" Username = $username \n"),
                      );
                    },
                  );
                }
              },
              child: const Text("Réinitialiser le mot de passe"),
            ),
          ),
        ],
      ),
    );
  }
}
