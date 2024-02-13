import 'package:flutter/material.dart';
import 'package:iceman/Models/iceshop.dart';
import 'package:provider/provider.dart';

import '../Models/ice.dart';

class IceOrderPage extends StatefulWidget {
  final Ice ice;
  const IceOrderPage({super.key, required this.ice});

  @override
  State<IceOrderPage> createState() => _IceOrderPageState();
}

class _IceOrderPageState extends State<IceOrderPage> {
  double sugarValue = 0.5;
  void customizeSugar(double newValue) {
    setState(() {
      sugarValue = newValue;
    });
  }

  //cream
  double creamValue = 0.5;
  void customizeCream(double newValue) {
    setState(() {
      creamValue = newValue;
    });
  }

  //milk
  //cream
  double milkValue = 0.5;
  void customizeMilk(double newValue) {
    setState(() {
      milkValue = newValue;
    });
  }
//add to ice cart

  void addToCart() {
    Provider.of<IceShop>(context, listen: false).addToBag(widget.ice);
    //Navigator.pop(context);
    Navigator.of(context).pop();

    // notify the user it has been added

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Successfully added to cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.ice.name),
      ),
      body: Column(children: [
        Image.asset(
          widget.ice.imagePath,
          width: 500,
          height: 500,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Sugar',
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Slider(
                        label: sugarValue.toString(),
                        value: sugarValue,
                        divisions: 5,
                        onChanged: (value) => customizeSugar(value)),
                  ),
                ],
              ),
              // cream slider
              Row(
                children: [
                  Text(
                    'Cream',
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Slider(
                        label: creamValue.toString(),
                        value: creamValue,
                        divisions: 5,
                        onChanged: (value) => customizeCream(value)),
                  ),
                ],
              ),

              //milk slider
              Row(
                children: [
                  Text(
                    'Milk',
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Slider(
                        label: milkValue.toString(),
                        value: milkValue,
                        divisions: 5,
                        onChanged: (value) => customizeMilk(value)),
                  ),
                ],
              ),

              MaterialButton(
                onPressed: addToCart,
                color: Colors.brown,
                child: Text('Add to Cart'),
              )
            ],
          ),
        )
      ]),
    );
  }
}
