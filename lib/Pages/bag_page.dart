import 'package:flutter/material.dart';
import 'package:iceman/Components/icecream_tile.dart';
import 'package:iceman/Models/iceshop.dart';
import 'package:provider/provider.dart';

import '../Models/ice.dart';

class BagPage extends StatefulWidget {
  const BagPage({super.key});

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  void removeFromCart(Ice ice) {
    Provider.of<IceShop>(context, listen: false).removeFromBag(ice);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<IceShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(children: [
                  Text(
                    'My Cart',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //list of cart items

                  Expanded(
                    child: ListView.builder(
                      itemCount: value.iceBag.length,
                      itemBuilder: (context, index) {
                        //get individual drink in cart first
                        Ice ice = value.iceBag[index];
                        return IcecreamTile(
                          //return as a nice tile
                          ice: ice,
                          onTap: () => removeFromCart(ice),
                          trailing: const Icon(Icons.delete),
                        );
                      },
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.brown,
                    child: Text(
                      'PAY',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ]),
              ),
            ));
  }
}
