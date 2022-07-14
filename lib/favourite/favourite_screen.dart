import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Screen"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      selectedItem.add(index);
                      setState(() {});
                    },
                    title: Text('Item ' + index.toString()),
                    trailing: Icon(selectedItem.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_outline),
                  );
                }),
          )
        ],
      ),
    );
  }
}
