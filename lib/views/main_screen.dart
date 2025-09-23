import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:souk_app/views/Widgets/product_card.dart';
import 'cart_page.dart';
import '../controllers/main_controller.dart';
import '../views/Widgets/search_bar.dart';
import '../views/Widgets/category_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  Widget homepage(BuildContext context) {
    final controller = Provider.of<MainController>(context, listen: false);
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: ListView(
          children: [
            // 🔎 Search Bar
            CustomSearchBar(),

            // 📂 Categories
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            CategoryList(),

            // Best Selling
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                "Best Selling",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, i) {
                return ProductCard(product: controller.products[i]);
              },
              physics: NeverScrollableScrollPhysics(),

              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MainController>(
      builder: (context, controller, child) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.orange,
            currentIndex: controller.selectedIndex,
            onTap: controller.onItemTapped,
            iconSize: 30,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Cart"),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: "Profile",
              ),
            ],
          ),
          body:
              [
                homepage(context),
                CartPage(),
                Center(child: Text("profile")),
              ][controller.selectedIndex],
        );
      },
    );
  }
}
