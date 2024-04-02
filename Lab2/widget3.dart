import 'package:flutter/material.dart';

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              child: Image.asset('assests/download (1).jpg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '1975 Porsche 911 Carrera',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16), // Add space between text and icons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: () {
                    // Add functionality for like button
                  },
                ),
                Text("0"),
                IconButton(
                  icon: Icon(Icons.mode_comment),
                  onPressed: () {
                    // Add functionality for comment button
                  },
                ),
                Text("0"),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    // Add functionality for share button
                  },
                ),
                Text("Share")
              ],
            ),
            SizedBox(height: 25), // Add space between divider and texts
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Essential information',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
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
            SizedBox(height: 16), // Add space between icons and divider
            Container(
              color: Colors.black, // Add divider
              height: 1,
            ),
            SizedBox(height: 8), // Add space between divider and next content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green, // Green color for tick icon
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Year, Make, Model, VIN',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 8), // Add space between texts
                  Text(
                    'Year: 1997',
                    style: TextStyle(fontSize: 17, color: Colors.grey[800]),
                  ),
                  Text(
                    'Make:Porsche',
                    style: TextStyle(fontSize: 17, color: Colors.grey[800]),
                  ),
                  Text(
                    'Model: 911 Carrera',
                    style: TextStyle(fontSize: 17, color: Colors.grey[800]),
                  ),
                  Text(
                    'VIN: 9115400029',
                    style: TextStyle(fontSize: 17, color: Colors.grey[800]),
                  ),
                  SizedBox(height: 20), // Add space between texts and divider
                  Container(
                    color: Colors.grey[800], // Add grey thick
                    height: 1,
                  ),
                  SizedBox(height: 20), // Add space between divider and photo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: Icon(Icons.edit), // Pen icon for editing
                        onPressed: () {
                          // Add functionality for editing
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Add space between photo and the bottom
            Container(
              color: Colors.grey[800], // Add grey thick at the bottom
              height: 1,
            ),
            SizedBox(height: 8), // Add space between divider and photo text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Photo', // Text "Photo"
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.edit, // Pen icon for editing
                    color: Colors.black, // Color of the pen icon
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Add space between photo and the bottom
            Container(
              color: Colors.grey[800], // Add grey thick at the bottom
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
