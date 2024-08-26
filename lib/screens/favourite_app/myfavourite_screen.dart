import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_hub/providers/favourite_provider.dart';

class MyfavouriteScreen extends StatefulWidget {
  const MyfavouriteScreen({super.key});

  @override
  State<MyfavouriteScreen> createState() => _MyfavouriteScreenState();
}

class _MyfavouriteScreenState extends State<MyfavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favouriteprovider =
        Provider.of<FavouriteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favourites'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favouriteprovider.selectedItems.length,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteProvider>(
                      builder: (context, ob, chiled) {
                    return ListTile(
                      onTap: () {
                        ob.selectItem(index);
                      },
                      leading: Text(
                        'Item$index',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(ob.selectedItems.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}
