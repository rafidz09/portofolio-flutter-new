import 'package:flutter/material.dart';
import 'Page2.dart'; // Adjust import paths as necessary

class HomePage extends StatelessWidget {
  final String nama;
  final String sekolah;
  final String role;
  final String deskripsi;

  const HomePage({
    Key? key,
    required this.nama,
    required this.sekolah,
    required this.role,
    required this.deskripsi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.shortestSide,
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: const Color.fromRGBO(171, 182, 172, 0.5),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 100.0,
                      backgroundImage: AssetImage('images/rafidz.png'),
                    ),
                    Text(nama,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                    Text(sekolah,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16, color: Color.fromARGB(137, 0, 0, 0))),
                    Text(role,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16, color: Color.fromARGB(137, 0, 0, 0))),
                    Text(deskripsi,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16, color: Color.fromARGB(137, 0, 0, 0))),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Page2()),
                          );
                        },
                        child: const Text('See More',
                            style: TextStyle(
                                fontSize: 12, color: Colors.greenAccent))),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
