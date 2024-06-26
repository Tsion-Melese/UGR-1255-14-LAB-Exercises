import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CartPage(),
    );
  }
}


class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Text(
            'Cart',
            style: TextStyle(
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 16),
                Icon(Icons.shopping_cart, color: Colors.blue[500]),
                SizedBox(width: 8),
                Text(
                  'Shopping Cart',
                  style: TextStyle(color: Colors.blue[500]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  'Verify your quantity',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Cards
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/download (1).jpg'),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Calas',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '15',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {},
                        ),
                        Text('1.0'),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('assets/download (1).jpg'),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Angel hair',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Salmon',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            '22.99',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {},
                        ),
                        Text('2.0'),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: Colors.grey[200],
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Subtotal',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '60.98',
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'TAX',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '6.10',
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                ),
                                child: Text(
                                  'Checkout',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
