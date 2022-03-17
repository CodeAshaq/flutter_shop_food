import 'package:flutter/material.dart';
import 'package:shop_food/home_screen.dart';
import 'package:shop_food/model/list_items.dart';

class DetailPembelian extends StatefulWidget {
  final ItemsMakanan makan;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  DetailPembelian({required this.makan});

  @override
  State<DetailPembelian> createState() => _DetailPembelianState();
}

class _DetailPembelianState extends State<DetailPembelian> {
  TextEditingController controllerCatatan = TextEditingController();
  TextEditingController controllerAlamat = TextEditingController();
  int jumlah = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: [
                  Image.network(
                    widget.makan.imageNetwork ,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )),
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.makan.namaMakanan,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  widget.makan.keterangan,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  widget.makan.terjual,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child:  Text(
                  widget.makan.harga,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                    controller: controllerCatatan,
                    cursorColor: Colors.grey,
                    maxLength: 100,
                    maxLines: 2,
                    decoration: InputDecoration(
                      labelText: 'Masukkan Catatan',
                      labelStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(
                        Icons.note_alt_rounded,
                        size: 35,
                        color: Colors.grey,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 237, 45, 45))),
                    )),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                    controller: controllerAlamat,
                    cursorColor: Colors.grey,
                    maxLength: 100,
                    maxLines: 2,
                    decoration: InputDecoration(
                      labelText: 'Masukkan Alamat',
                      labelStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: const Icon(
                        Icons.location_on,
                        size: 35,
                        color: Colors.grey,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 237, 45, 45))),
                    )),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text('Jumlah Beli : '),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                if (jumlah != 0) {
                                  setState(() {
                                    jumlah--;
                                  });
                                }
                              },
                              child: const Icon(
                                Icons.remove,
                                color: Colors.grey,
                              )),
                          Text(jumlah.toString()),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  jumlah++;
                                });
                              },
                              child: const Icon(
                                Icons.add,
                                color: Colors.grey,
                              ))
                        ],
                      )
                    ],
                  )),

              FloatingActionButton(
                backgroundColor: const  Color.fromARGB(255, 237, 45, 45),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Pembayaran Sukses"),
                          // ignore: sized_box_for_whitespace
                          content: Container(
                            height: 200,
                            child: Column(
                              children: <Widget>[
                                Text("Catatan : ${controllerCatatan.text}"),
                                Text("Alamat : ${controllerAlamat.text}"),
                                Text("Jumlah Pembelian : $jumlah"),
                              ],
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: const Color.fromARGB(255, 237, 45, 45),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const HomeScreen();
                                  }));
                                },
                                child: const Text('OK'))
                          ],
                        );
                      });
                },
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
