import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mixup_all/models/catlog.dart';
import 'package:flutter_mixup_all/widgets/drawer.dart';
import 'package:flutter_mixup_all/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;
  final String name = "Shivam";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.jason");
  }

  @override
  Widget build(BuildContext context) {
    //(For Display dummy data)
    //final dummyList = List.generate(10, (index) => CatalogModel.items);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          //itemCount:dummyList.length,(For dummy list)
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              // item:dummyList[index], (for dummy list)
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
