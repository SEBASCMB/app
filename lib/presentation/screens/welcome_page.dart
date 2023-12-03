import 'package:app/presentation/screens/welcome_login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const WelcomeLogin()
              )
            );
          },
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Logo(),
            ],
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'VB',
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
              fontSize: 95,
              fontWeight: FontWeight.w700,
              letterSpacing: -20,
            )),
          ),
          Text(
            'Valerie Barrientos',
            textAlign: TextAlign.center,
            style: GoogleFonts.greatVibes(
                textStyle: const TextStyle(
              fontSize: 32,
            )),
          )
        ],
      ),
    );
  }
}
