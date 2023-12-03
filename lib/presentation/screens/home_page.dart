import 'package:app/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: const Stack(
          children: [
            Header(),
            Textheader(),
            Inbox(),
            User(),
            Avatar(),
            Username(),
            BoxNotificaciones(),
            BoxRecientes(),
            BoxWhite(),
            ProximaCita(),
            VerTodas(),
            GreyBox(),
            DiaCita(),
            Servicio(),
            SitePhoto()
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNaviation(),
    );
  }
}

class SitePhoto extends StatelessWidget {
  const SitePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 580, left: 15, right: 15),
      width: 392,
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/peluqueria.jpg'),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}

class Servicio extends StatelessWidget {
  const Servicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 435, left: 160),
      width: 143,
      height: 54,
      child: const Text(
        'Alisado Cabello\n9:30 AM',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    );
  }
}

class DiaCita extends StatelessWidget {
  const DiaCita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 450, left: 66),
      // width: 65,
      // height: 81,
      child: const Text(
        'LUN\n30\nOCT',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w600,
          height: 0,
        ),
      ),
    );
  }
}

class GreyBox extends StatelessWidget {
  const GreyBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 435,left: 28),
      width: 115,
      height: 100,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(229,229,229,1.000),
      ),
    );
  }
}

class VerTodas extends StatelessWidget {
  const VerTodas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 405,left: 308),
      width: 65,
      height: 19,
      child: const Text(
        'Ver todas',
        style: TextStyle(
          color: Color.fromRGBO(28,227,255,1.000),
          fontSize: 14,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      ),
    );
  }
}

class ProximaCita extends StatelessWidget {
  const ProximaCita({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 400,left: 28,),
      width: 130,
      height: 27,
      child: const Text(
        'Próxima cita',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),
      ),
    );
  }
}

class BoxWhite extends StatelessWidget {
  const BoxWhite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 390, left: 15, right: 15),
      width: 392,
      height: 168,
      decoration: const BoxDecoration(
        
        color: Colors.white,
      ),
    );
  }
}

class BoxRecientes extends StatelessWidget {
  const BoxRecientes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 285, left: 19, right: 19),
      width: 392.0,
      height: 66.0,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color.fromRGBO(204, 204, 204, 1.000),
          ),
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Recientes',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 244,
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

class BoxNotificaciones extends StatelessWidget {
  const BoxNotificaciones({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 220, left: 19, right: 19),
      width: 392.0,
      height: 66.0,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color.fromRGBO(204, 204, 204, 1.000),
          ),
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Notificaciones',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 210,
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 98.0, left: 46.0, right: 321),
      width: 44,
      height: 44,
      child: const CircleAvatar(
        backgroundImage: AssetImage(
          'assets/images/avatar.jpg',
        ),
      ),
    );
  }
}

class Inbox extends StatelessWidget {
  const Inbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 51.0, left: 361, right: 20.39),
      width: 29.61,
      height: 30.72,
      child: const Icon(
        Icons.inbox,
      ),
    );
  }
}

class Username extends StatelessWidget {
  const Username({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 98.0, left: 105.0, right: 105.0),
      width: 220,
      height: 45,
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Diana Celmira Marquez',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.50,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}

class User extends StatelessWidget {
  const User({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 88.0, left: 19.0, right: 19.0),
      width: 392,
      height: 65,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(
              0x3F000000,
            ),
            blurRadius: 4,
            offset: Offset(
              0,
              4,
            ),
            spreadRadius: 0.0,
          )
        ],
      ),
    );
  }
}

class Textheader extends StatelessWidget {
  const Textheader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 49.0, left: 73.0),
      width: 198,
      height: 33,
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Centro de Belleza',
            style: TextStyle(
              color: Color(
                0xFFFFFDFD,
              ),
              fontSize: 24.0,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 119,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(
          230,
          151,
          175,
          1.000,
        ),
      ),
    );
  }
}
