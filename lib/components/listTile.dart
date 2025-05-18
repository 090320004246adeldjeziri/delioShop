import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? ontap;
  const MyListTile(
      {super.key, required this.icon, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: ListTile(
        onTap: ontap,
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
        title: Text(
          text,
          
        ),

      ),
    );
  }
}
