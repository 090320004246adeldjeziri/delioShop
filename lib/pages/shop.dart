import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:state_managment_tastfood/components/drawer.dart';
import 'package:state_managment_tastfood/components/myProductTile.dart';
import 'package:state_managment_tastfood/models/product.dart';
import 'package:state_managment_tastfood/models/shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: const MyDrawer(),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.background,
          // elevation: 0,
          title: Text(
            "Shop Page",
            style: GoogleFonts.poppins(
                fontSize: 21, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          leading: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent, elevation: 0),
              child: const Icon(
                size: 30,
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {}),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top:28.0),
            child: Center(
              
              child: Text(
                "Product premium only just for you !",
                style: GoogleFonts.podkova(
                    fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
              height: 550,
              child: ListView.builder(
                  itemCount: products.length,
                  padding: EdgeInsets.all(25),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    // get each individual product from shop
                    Product product = products.elementAt(index);
                    //return as a product tile UIMyProductTile(product: product))
                    return MyProductTile(product: product);
                  })))
        ]));
  }
}
