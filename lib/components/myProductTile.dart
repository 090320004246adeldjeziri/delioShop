import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:state_managment_tastfood/models/product.dart';
import 'package:state_managment_tastfood/models/shop.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  MyProductTile({super.key, required this.product});

  void addToCarte(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              content: Text("Add this item to cart"),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Cancel"),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().addItemToCart(product);
                    // print(product.name);
                    print(context.read<Shop>().cart.first.name);
                  },
                  child: Text("Yes"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(15),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // product image
            AspectRatio(
                aspectRatio: 1,
                child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    width: 300,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          product.imgPath,
                          fit: BoxFit.contain,
                        )))),
            const SizedBox(
              height: 15,
            ),
            // product name
            Text(
              product.name,
              style: GoogleFonts.podkova(
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 20,
            ),
            //product description
            Center(
              child: Text(
                maxLines: 2,
                product.description,
                style: GoogleFonts.poppins(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //product price ++ button add to cart !
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.price,
                  style: GoogleFonts.poppins(
                      fontSize: 17, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () => addToCarte(context),
                      child: Icon(
                        Icons.add_circle,
                        color: Theme.of(context).colorScheme.onSecondary,
                      )),
                )
              ],
            )
          ]),
    );
  }
}
