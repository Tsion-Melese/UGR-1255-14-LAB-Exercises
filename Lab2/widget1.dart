import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiCalculetor(),
    );
  }
}

class BmiCalculetor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.blue[700],
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      width: 150,
                      height: 150,
                      child: Card(
                        color: Colors.grey[800],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'Male',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      width: 150, // Set the desired width
                      height: 150, // Set the desired height
                      child: Card(
                        color: Colors.grey[800],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female,
                                color: Colors.white,
                                size: 50), // Increase the size of the icon
                            Text(
                              'Female',
                              style: TextStyle(
                                  fontSize:
                                      20), // Increase the font size of the text
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.grey[800],
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'Height',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              '150 cm',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          Slider(
                            value: 176,
                            min: 100,
                            max: 200,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GestureDetector(
                    child: Card(
                      color: Colors
                          .grey[800], // Set grey[800] background for the card
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Rounded corners for the card
                      ),
                      child: Container(
                        padding: EdgeInsets.all(
                            20.0), // Padding for the card content
                        child: Column(
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                  color: Colors.grey), // Set text color to grey
                            ),
                            SizedBox(
                                height: 10), // Spacer between texts and icons
                            Text(
                              '50',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white, // Set text color to white
                                fontWeight: FontWeight.bold, // Set text to bold
                              ),
                            ),
                            SizedBox(
                                height: 10), // Spacer between text and icons
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Center icons horizontally
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors
                                      .blue, // Set circle background color to blue
                                  child: Icon(
                                    Icons.remove,
                                    color:
                                        Colors.white, // Set icon color to white
                                  ),
                                ),
                                SizedBox(width: 20), // Spacer between icons
                                CircleAvatar(
                                  backgroundColor: Colors
                                      .blue, // Set circle background color to blue
                                  child: Icon(
                                    Icons.add,
                                    color:
                                        Colors.white, // Set icon color to white
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: Card(
                      color: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '70',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 20),
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.purple, // Set purple background for the container
              margin: EdgeInsets.only(top: 10.0),
              height: 50.0,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Set text color to white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
