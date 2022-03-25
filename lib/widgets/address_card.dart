import 'dart:io';

import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  final String id;
  final String title;
  final String address;
  final File image;

  AddressCard(
      {required this.id,
      required this.title,
      required this.address,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: FileImage(image),
        radius: 50,
      ),
      title: Text(title),
      subtitle: Text(address),
    );
  }
}
