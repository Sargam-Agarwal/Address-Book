import 'dart:io';

class Address {
  final String id;
  final String title;
  final String address;
  final File image;

  Address(
      {required this.id,
      required this.title,
      required this.address,
      required this.image});
}
