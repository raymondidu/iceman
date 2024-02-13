import 'package:flutter/material.dart';
import 'package:iceman/Models/iceshop.dart';
import 'package:iceman/Pages/ice_page.dart';
import 'package:provider/provider.dart';

import '../Components/icecream_tile.dart';
import '../Models/ice.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void goToIceOrderPage(Ice ice) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => IceOrderPage(
        ice: ice,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<IceShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chef K❤️',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Decentralized Ice cream Shop',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.shop.length,
                            itemBuilder: (context, index) {
                              Ice individualIce = value.shop[index];
                              return IcecreamTile(
                                trailing: Icon(Icons.arrow_forward_ios),
                                ice: individualIce,
                                onTap: () => goToIceOrderPage(individualIce),
                              );
                            }))
                  ],
                ),
              ),
            ));
  }
}
