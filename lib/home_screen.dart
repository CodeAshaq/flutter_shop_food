import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shop_food/button_diskon.dart';
import 'package:shop_food/detail_diskon.dart';
import 'package:shop_food/model/list_image.dart';
import 'package:shop_food/pilihan_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopee Food'),
          backgroundColor: const Color.fromARGB(255, 237, 45, 45),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2)),
                items: imageAssetsList.map((img) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const DetailDiskon();
                        }));
                      },
                      child: Stack(children: <Widget>[
                        Card(
                          margin: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Expanded(
                                  child: Image.asset(
                                img.imageAssets,
                                fit: BoxFit.fill,
                              )),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 11.0),
                                  child: Text(
                                    img.promo,
                                    style: const TextStyle(fontSize: 16.0),
                                  )),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(img.keterangan),
                              )
                            ],
                          ),
                        ),
                      ]));
                }).toList(),
              ),
              const SizedBox(
                height: 15,
              ),
              const DiskonButton(),
              const PilihanItems(),
            ],
          ),
        ));
  }
}
