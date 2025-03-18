import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mega Shop"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProductCard(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "WISHLIST"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "ORDER"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "ACCOUNT"),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sale Badge
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "SALE",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 8),
            
            // Product Image
            Center(
              child: Image.network(
                "https://m.media-amazon.com/images/I/61H7+KSrEiL._AC_SL1500_.jpg",
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            
            // Product Name
            Text(
              "TMA-2 HD Wireless",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            
            // Price Section
            Row(
              children: [
                Text("\$1000.00",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(width: 8),
                Text("\$1200.00",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough)),
              ],
            ),
            SizedBox(height: 4),
            
            // Rating
            Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 16),
                Icon(Icons.star, color: Colors.orange, size: 16),
                Icon(Icons.star, color: Colors.orange, size: 16),
                Icon(Icons.star, color: Colors.orange, size: 16),
                Icon(Icons.star_half, color: Colors.orange, size: 16),
                SizedBox(width: 4),
                Text("4.6 (86 Reviews)",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
