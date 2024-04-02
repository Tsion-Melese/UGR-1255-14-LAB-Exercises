import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CarPage(),
    );
  }
}

class CarPage extends StatelessWidget {
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
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 200,
                child: Image.asset('assets/download (1).jpg'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '1975 Porsche 911 Carrera',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () {},
                  ),
                  Text("0"),
                  IconButton(
                    icon: Icon(Icons.mode_comment),
                    onPressed: () {},
                  ),
                  Text("0"),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  ),
                  Text("Share")
                ],
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Essential information',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      '1 of 3 done',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Container(
                color: Colors.black,
                height: 1,
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text(
                        'Year, Make, Model, VIN',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      title: Text('Year: 1997'),
                    ),
                    ListTile(
                      title: Text('Make: Porsche'),
                    ),
                    ListTile(
                      title: Text('Model: 911 Carrera'),
                    ),
                    ListTile(
                      title: Text('VIN: 9115400029'),
                    ),
                    Divider(color: Colors.grey),
                    ListTile(
                      leading: Icon(Icons.done),
                      title: Text(
                        'Description',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                    Divider(color: Colors.grey),
                    ListTile(
                      leading: Icon(Icons.done),
                      title: Text(
                        'Photos',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
