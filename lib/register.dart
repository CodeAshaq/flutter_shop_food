import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:shop_food/home_screen.dart';

class Registrasi extends StatelessWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Image.asset(
            'images/shopee-logo-5.png',
            width: 150,
            height: 150,
          )),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Selamat Datang',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Silahkan Kenyangkan Perutmu,  \nJika kamu lapar maka makanlah',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            child: Center(
              child: AnimatedButton(
                child: const Text(
                  'Pesan Sekarang',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                },
                shadowDegree: ShadowDegree.dark,
                duration: 30,
                width: 200,
                height: 50,
                color: const  Color.fromARGB(255, 237, 45, 45),
                
              ),
            ),
          ),
        ],
      ),
    );
  }
}
