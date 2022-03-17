import 'package:flutter/material.dart';
import 'package:shop_food/detail_pembelian.dart';
import 'package:shop_food/model/list_items.dart';

class PilihanItems extends StatelessWidget {
  const PilihanItems({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 22),
          child: const Text(
            'Menu Makanan',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 17, color: Color.fromARGB(209, 0, 0, 0)),
          ),
          alignment: Alignment.centerLeft,
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final ItemsMakanan makan = itemMakananList[index];
            return InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailPembelian(makan: makan);
              }));},
              // ignore: avoid_unnecessary_containers
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 22),
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.6),
                              blurRadius: 10.0,
                              offset: const Offset(0.0, 10.0),
                              spreadRadius: -0.6),
                        ],
                        image: DecorationImage(
                            image: NetworkImage(makan.imageNetwork),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.35),
                                BlendMode.darken)),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                makan.namaMakanan,
                                style: const TextStyle(
                                    fontSize: 19, color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Align(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 237, 45, 45)
                                            .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.monetization_on,
                                        color: Colors.yellow,
                                        size: 23,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        makan.harga,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 237, 45, 45)
                                            .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.yellow,
                                        size: 23,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        makan.jarak,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            alignment: Alignment.bottomLeft,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: itemMakananList.length,
        ),
      ],
    );
  }
}
