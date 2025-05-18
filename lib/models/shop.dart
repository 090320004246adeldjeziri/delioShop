import 'package:flutter/cupertino.dart';
import 'package:state_managment_tastfood/models/product.dart';

class Shop extends ChangeNotifier {
  // prodcut for sale
  final List<Product> _shopProduct = [
    Product(
      name: "Smartphone Samsung A14",
      price: "35,000 DA",
      description: "Écran 6.6\", 64GB ROM, 4GB RAM, Caméra Triple 50MP.",
      imgPath: "lib/assets/images/a14.jpg",
    ),
    Product(
      name: "Basket Nike Air Max",
      price: "18,900 DA",
      description: "Chaussures confortables et stylées pour usage quotidien.",
      imgPath: "lib/assets/images/nike_air_max.png",
    ),
    Product(
      name: "Montre Smart Watch DZ20",
      price: "6,500 DA",
      description:
          "Montre connectée avec capteurs de santé, notifications, IP67.",
      imgPath: "lib/assets/images/smartwatch_dz20.jpg",
    ),
    Product(
      name: "Casque Bluetooth JBL",
      price: "7,200 DA",
      description: "Son clair, basses puissantes, autonomie 12h.",
      imgPath: "lib/assets/images/jbl.png",
    ),
    Product(
      name: "Sac à dos Antivol",
      price: "4,300 DA",
      description: "Sac durable avec port USB et compartiments multiples.",
      imgPath: "lib/assets/images/sac.jpg",
    ),
    Product(
      name: "Chargeur Rapide 25W",
      price: "1,800 DA",
      description:
          "Adaptateur charge rapide USB-C pour tous vos appareils. Adaptateur charge rapide USB-C pour tous vos appareils. Adaptateur charge rapide USB-C pour tous vos appareils. Adaptateur charge rapide USB-C pour tous vos appareils.Adaptateur charge rapide USB-C pour tous vos appareils.Adaptateur charge rapide USB-C pour tous vos appareils.Adaptateur charge rapide USB-C pour tous vos appareils.Adaptateur charge rapide USB-C pour tous vos appareils.Adaptateur charge rapide USB-C pour tous vos appareils.Adaptateur charge rapide USB-C pour tous vos appareils.",
      imgPath: "lib/assets/images/chargeur.jpg",
    ),
  ];
  // user cart
  List<Product> _cart = [];
  // get product list
  List<Product> get shop => _shopProduct;
  // get user cart
  List<Product> get cart => _cart;
  // add item to cart
  void addItemToCart(Product x) {
    _cart.add(x);
    notifyListeners();
  }
  // remove item from cart

  void removeItemFromCart(Product x) {
    _cart.remove(x);
    notifyListeners();
  }
}
