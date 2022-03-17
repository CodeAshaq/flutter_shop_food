import 'package:flutter/material.dart';
import 'package:shop_food/detail_diskon.dart';


class DiskonButton extends StatelessWidget {
  const DiskonButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DetailDiskon();
          }));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Icon(Icons.discount),
                  Text(
                    'Ada Diskon Nganggur',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            const Icon(
              Icons.keyboard_arrow_right,
            ),
          ],
        ),
      ),
    );
  }
}
