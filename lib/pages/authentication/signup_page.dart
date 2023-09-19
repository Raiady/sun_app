import 'package:flutter/material.dart';
import 'package:sun_app/services/users/users_services.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _birth = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _social = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: Image.asset(
                'assets/images/logo_flutter.png',
                height: 100,
              ),
            ),
            const Text(
              "Registre-se",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 213, 107, 8),
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto',
              ),
            ),
            const Text(
              'aplicativo multi-funcional',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 213, 93, 8),
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            TextFormField(
              controller: _email,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: Text("E-mail"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.3),
                  ),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1.5))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: _birth,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.cake),
                  label: Text("Data de nascimento"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.3),
                  ),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1.5))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: _phone,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  label: Text("telefone"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.3),
                  ),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1.5))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: _social,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.social_distance),
                  label: Text("rede social"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.3),
                  ),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1.5))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: _password,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  label: Text("Senha"),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.3),
                  ),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1.5))),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              controller: _userName,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: Text("Nome do usuário"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1.3),
                  ),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1.5))),
            ),
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(top: 8.0),
              child: const Text(
                'Esqueceu a senha?',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    UsersServices usersServices = UsersServices();
                    if (await usersServices.signUp(
                      email: _email.text,
                      password: _password.text,
                      userName: _userName.text,
                      birth: _birth.text,
                      social: _social.text,
                      phone: _phone.text,
                    )) {
                      if (context.mounted) Navigator.of(context).pop();
                    } else {
                      if (context.mounted) {
                        var snackBar = const SnackBar(
                          content: Text('Algum erro aconteceu no registro'),
                          backgroundColor: Color.fromARGB(255, 161, 71, 66),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.all(50),
                          elevation: 20,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 1.5,
                      minimumSize: const Size.fromHeight(50),
                      shape: LinearBorder.bottom()),
                  child: const Text(
                    'Registrar',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Ou',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google.png',
                        height: 50,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "Login com Google",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Já tem uma conta?'),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
