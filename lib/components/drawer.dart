import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:state_managment_tastfood/components/listTile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 8,
      backgroundColor: Theme.of(context).colorScheme.background,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            const SizedBox(height: 90),
            Icon(
              Icons.shopping_bag,
              size: 70,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            Text(
              "D E L I O  S H O P",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 40,
            ),
            MyListTile(
              icon: Icons.home,
              text: "H O M E",
              ontap: () {
                Navigator.of(context).pop();
              },
            ),
            MyListTile(
              icon: Icons.shopping_cart,
              text: "C A R T",
              ontap: () {
                Navigator.of(context).pushNamed('cart');
              },
            ),
            MyListTile(
              icon: CupertinoIcons.heart_fill,
              text: "F A V O R I T E",
              ontap: () {
                Navigator.of(context).pushNamed('fav_page');
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: MyListTile(
            icon: Icons.logout,
            text: "E X I T",
            ontap: () {
              exit(0);
            },
          ),
        )
      ]),
    );
  }
}
