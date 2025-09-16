import 'package:flutter/material.dart';
import '../models/product_model.dart';

class MainController extends ChangeNotifier {
  int selectedIndex = 0; // اندكس الصفحة الحالية

  List<Category> categories = [
    Category(label: "Laptop", icon: Icons.laptop),
    Category(label: "Mobile", icon: Icons.mobile_friendly),
    Category(label: "Bike", icon: Icons.bike_scooter),
    Category(label: "Gifts", icon: Icons.gif),
    Category(label: "Car", icon: Icons.car_crash),
  ];

  List<Product> products = [
    Product(
      image: 'images/marwaha.gif',
      title: "FAN SMALL",
      subtitle: "Description good fan to daily use",
      price: "50\$",
    ),
    Product(
      image: 'images/Tv.gif',
      title: "TV",
      subtitle: "TV modern from LG",
      price: "100\$",
    ),
    Product(
      image: 'images/Watch.gif',
      title: "Watch",
      subtitle: "for greatList",
      price: "30\$",
    ),
    Product(
      image: 'images/wirless.gif',
      title: "Wireless",
      subtitle: "for clear listening",
      price: "50\$",
    ),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
