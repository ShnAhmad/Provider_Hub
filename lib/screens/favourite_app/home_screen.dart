import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_hub/providers/favourite_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              child: Icon(Icons.favorite),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 50,
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
