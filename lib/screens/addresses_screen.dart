import 'package:flutter/material.dart';

import './add_address.dart';
import 'package:provider/provider.dart';
import '../providers/addresses_provider.dart';
import '../widgets/address_card.dart';

class AddressesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AddressesScreenState();
  }
}

class _AddressesScreenState extends State<AddressesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Address Book'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddAddress.routeName);
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<AddressesProvider>(context, listen: false)
            .fetchStoredData(),
        builder: (ctx, snapshot) => snapshot.connectionState ==
                ConnectionState.waiting
            ? Center(child: CircularProgressIndicator())
            : Consumer<AddressesProvider>(
                child: Center(
                  child: Text('No addresses yet! Add some!'),
                ),
                builder: (ctx, addresses, child) => addresses.items.length <= 0
                    ? child
                    : ListView.builder(
                        itemCount: addresses.items.length,
                        itemBuilder: (ctx, i) => AddressCard(
                          id: addresses.items[i].id,
                          title: addresses.items[i].title,
                          address: addresses.items[i].address,
                          image: addresses.items[i].image,
                        ),
                      ),
              ),
      ),
    );
  }
}
