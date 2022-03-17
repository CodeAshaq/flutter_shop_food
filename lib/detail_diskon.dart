import 'package:flutter/material.dart';
import 'package:shop_food/model/list_diskon.dart';

class DetailDiskon extends StatelessWidget {
  const DetailDiskon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diskon buat Kamu'),
        backgroundColor: const Color.fromARGB(255, 237, 45, 45),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  final ListDiskon diskon = listDiskonItems[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 22),
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            blurRadius: 7.0,
                            offset: const Offset(0.0, 6.0),
                            spreadRadius: -0.4),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Align(
                          child: Row(
                            children: [
                              Expanded(
                                  child: Image.asset(
                                diskon.imageAssets,
                                fit: BoxFit.fill,
                                height: 100,
                                width: MediaQuery.of(context).size.width,
                              )),
                            ],
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              diskon.namaDiskon,
                              style: const TextStyle(
                                  fontSize: 19, color: Colors.black),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Align(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40, top: 70),
                            child: Text(diskon.keterangan),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Align(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 20, left: 10),
                            // ignore: avoid_unnecessary_containers
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.timer,
                                  color: Colors.grey,
                                  size: 23,
                                ),
                                Text(
                                  diskon.waktu,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          alignment: Alignment.bottomLeft,
                        )
                      ],
                    ),
                  );
                }),
                itemCount: listDiskonItems.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
