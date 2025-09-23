import 'package:flutter/material.dart';
import '../models/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartItem> cartItems = [
    // بيانات افتراضية للتجربة
    CartItem(
      name: "FAN SMALL",
      price: 50.0,
      quatity: 2,
      image: "images/marwaha.gif",
    ),
    CartItem(name: "TV", price: 120.0, quatity: 1, image: "images/Tv.gif"),
    CartItem(
      name: "Watch",
      price: 200.0,
      quatity: 1,
      image: "images/Watch.gif",
    ),
  ];
  double get totalCartPrice => cartItems.fold(
    0,
    (sum, item) => sum + item.totalprice,
  ); //هي ميثود في ال دارت تستحدم لتجميع عناصر القائمة لقيمة واحدة وهي سم
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index]; //ال map كاملة
                return Row(
                  children: [
                    Expanded(
                      child: Card(
                        margin: EdgeInsets.all(8),
                        child: ListTile(
                          title: Text(
                            item.name,
                            style: TextStyle(color: Colors.teal),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("price of one : ${item.price}"),
                              Text("the sum : ${item.totalprice}"),
                            ],
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (item.quatity > 1) {
                                      item.quatity--;
                                    } else {
                                      cartItems.removeAt(index);
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove, color: Colors.red),
                              ),
                              Text("${item.quatity}"),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    item.quatity++;
                                  });
                                },
                                icon: Icon(Icons.add, color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 5),
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset(item.image),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              "Price of Bill : ${totalCartPrice}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
