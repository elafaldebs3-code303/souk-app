import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(8),
            child: Icon(Icons.menu, size: 28, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
