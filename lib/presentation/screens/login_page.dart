import 'package:app/presentation/screens/home_page.dart';
import 'package:app/presentation/screens/register_page.dart';
import 'package:app/providers/usuario_provider.dart';
import 'package:app/widgets/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [boxBackground(size), logo(), loginForm(context)],
        ),
      ),
    );
  }

  SingleChildScrollView loginForm(BuildContext context) {
    final usuarioProvider = Provider.of<Usurio_provider>(context);
    usuarioProvider.getUsuarios();
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 330,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 45),
            width: double.infinity,
            // height: 460,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      offset: Offset(5, 5))
                ]),
            child: Column(
              children: [
                const SizedBox(height: 35),
                const Text(
                  'Bienvenido/a\nVB Centro De Belleza',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 30),
                Container(
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        const CorreoElectronico(),
                        const SizedBox(height: 30),
                        const Contrasena(),
                        const SizedBox(height: 80),
                        Container(
                          width: 309,
                          height: 41,
                          child: Builder(builder: (context) {
                            return MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              disabledColor: Colors.grey,
                              color: Colors.black,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: const Text(
                                  'Ingresar',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage()));
                              },
                            );
                          }),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 289,
                          height: 19,
                          child: Builder(builder: (BuildContext context) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterPage()));
                              },
                              child: const Text(
                                'No tienes una cuenta? Registrate',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                    height: 0),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  SafeArea logo() {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 200,
        alignment: Alignment.center,
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }

  Container boxBackground(Size size) {
    return Container(
      width: double.infinity,
      height: size.height * 0.48,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(150, 40),
            bottomRight: Radius.elliptical(150, 30),
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/circleground.jpg'),
            fit: BoxFit.cover,
          )),
    );
  }
}

class Contrasena extends StatelessWidget {
  const Contrasena({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          return (value != null && value.length >= 6)
              ? null
              : 'La contraseña debe ser mayor o igual a 6 caracters';
        },
        style: const TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
            fontSize: 16),
        autocorrect: false,
        obscureText: true,
        decoration: InputDecorations.inputDecoration(
          hintext: 'Contraseña',
        ));
  }
}

class CorreoElectronico extends StatelessWidget {
  const CorreoElectronico({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        return EmailValidator.validate(value.toString())
            ? null
            : 'El valor ingresado no es un correo electronico';
      },
      style: const TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
          fontSize: 16),
      autocorrect: false,
      decoration: InputDecorations.inputDecoration(
        hintext: 'Correo Electronico',
      ),
    );
  }
}
