import 'dart:io';

import 'package:flutter/material.dart';
import '../widgets/image_input.dart';
import 'package:provider/provider.dart';
import '../providers/addresses_provider.dart';
import '../models/address.dart';

class AddAddress extends StatefulWidget {
  static const routeName = '/add-address';
  @override
  State<StatefulWidget> createState() {
    return _AddAddressState();
  }
}

class _AddAddressState extends State<AddAddress> {
  final _titleController = TextEditingController();
  final _addressController = TextEditingController();

  late File _image;

  void _saveImage(File pickedImage) {
    _image = pickedImage;
  }

  void _addAddress() {
    String id = DateTime.now().toString();
    Address newAddress = Address(
        id: id,
        title: _titleController.text,
        address: _addressController.text,
        image: _image);
    Provider.of<AddressesProvider>(context, listen: false)
        .addAddress(newAddress);
    Navigator.of(context).pop();
    // DBHelper.insert('address', {'title': _titleController.text, 'id': id, 'address': _addressController.text, 'image': _image.path});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Address'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(children: [
                TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: _titleController),
                SizedBox(height: 12),
                TextField(
                    maxLines: 3,
                    decoration: InputDecoration(labelText: 'Address'),
                    controller: _addressController),
                SizedBox(height: 12),
                ImageInput(_saveImage),
              ]),
            ),
          ),
          ElevatedButton.icon(
            style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: MaterialStateProperty.all(Colors.amber),
            ),
            icon: Icon(Icons.add),
            label: Text('Add this address'),
            onPressed: _addAddress,
          ),
        ],
      ),
    );
  }
}
