import 'package:app/presentation/screens/login_page.dart';
import 'package:app/presentation/screens/register_page.dart';
import 'package:flutter/material.dart';

class WelcomeLogin extends StatelessWidget {
  const WelcomeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/background2.jpg'),
          fit: BoxFit.fill,
        )),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 150,
                  height: 150,
                ),
                const SizedBox(
                  height: 540,
                ),
                const BotonIngresa(),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()));
                    },
                    child: RichText(
                        text: const TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            children: [
                          TextSpan(
                              text: "No tienes una cuenta? ",
                              style: TextStyle(
                                color: Colors.black,
                              )),
                          TextSpan(
                              text: "Registrate",
                              style: TextStyle(
                                color: Colors.pink,
                                decoration: TextDecoration.underline,
                              ))
                        ])))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BotonIngresa extends StatelessWidget {
  const BotonIngresa({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      },
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(const Size(240, 41)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)))),
      child: const Text(
        'Ingresa',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
