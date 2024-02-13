import 'package:flutter/material.dart';

import '../Models/ice.dart';

class IcecreamTile extends StatelessWidget {
  final Ice ice;
  void Function()? onTap;
  final Widget trailing;
  IcecreamTile(
      {super.key,
      required this.ice,
      required this.onTap,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.brown, borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          title: Text(
            ice.name,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            'N' + ice.price,
            style: TextStyle(color: Colors.brown.shade200),
          ),
          leading: SizedBox(width: 50, child: Image.asset(ice.imagePath)),
          trailing: trailing,
        ),
      ),
    );
  }
}
