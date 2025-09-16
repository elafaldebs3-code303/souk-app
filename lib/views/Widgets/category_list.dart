import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/main_controller.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<MainController>(context, listen: false);
    return Container(
      height: 115,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    print("Tapped on ${controller.categories[i].label}");
                    // تقدر هنا تعمل فلترة للمنتجات
                  },
                  color: Colors.grey[300],
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20), // حجم الدائرة
                  child: Icon(
                    controller.categories[i].icon,
                    size: 30,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  controller.categories[i].label,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
