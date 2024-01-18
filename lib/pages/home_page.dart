import 'dart:convert';//gives us json coder & decoder
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled5/models/catalog.dart';
import 'package:untitled5/utils/routes.dart';
import 'package:untitled5/widgets/drawer.dart';
import 'package:untitled5/widgets/home_widgets/catalog_header.dart';
import 'package:untitled5/widgets/home_widgets/catalog_list.dart';
import 'package:untitled5/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    //before initializing the build method we can get the data here
    super.initState();
    loadData();//method name
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    //rootbundle present in service library
    final catalogJson =   await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);//decode- converting string data to map
    var productsData = decodeData["products"];// gives us data of products from JSON
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item)).toList();
    //covert list to map and then convert back into list. called map operation
    setState(() {});
    //setstate use to refresh when new data is loaded
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () =>Navigator.pushNamed(context, MyRoutes.cartRoute),
        backgroundColor: Colors.indigo,
        child: Icon(Icons.shopping_cart_rounded),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().expand()
              else
                CircularProgressIndicator().centered().py12().expand(),
            ],
          ),
        ),
      ),
    );
  }

}









