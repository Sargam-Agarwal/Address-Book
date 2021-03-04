import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/addresses_screen.dart';
import 'screens/add_address.dart';
import 'providers/addresses_provider.dart';

void main() => runApp(AddressBook());

class AddressBook extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: AddressesProvider(),
      child: MaterialApp(
        home: AddressesScreen(),
        routes: {AddAddress.routeName: (_) => AddAddress()},
      ),
    );
  }
}
