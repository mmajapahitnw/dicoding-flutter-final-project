import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String imagePath;
  final String name;
  final String desc;
  final String price;

  const DetailPage({
    super.key,
    required this.imagePath,
    required this.name,
    required this.desc,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // stack item image with back and favorite button
            Stack(
              children: [
                // image
                Image.asset(imagePath),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // back button
                        CircleAvatar(
                          backgroundColor: Colors.grey[800],
                          child: IconButton(
                            icon: const Icon(
                              Icons.chevron_left,
                              color: Colors.orange,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        // favorite button
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                )
              ],
            ),

            // container for item detail card
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // item name and desc on the left
                    Container(
                      width: MediaQuery.of(context).size.width-24-24-120-24-10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(height: 12),
                          Text(desc, style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),

                    // 3 boxes on the right -> coffee, milk, and roast
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // coffee and milk row
                        Container(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // coffee box
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.coffee,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(height: 2),
                                    Text('Coffee',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10))
                                  ],
                                ),
                              ),

                              // milk box
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.water_drop,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(height: 2),
                                    Text('Milk',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),

                        // medium roasted box
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                              child: Text(
                            'Medium Roasted',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Enjoy AWOR\'s spin on coffee_name. Made with love, a signature treat for weary soul.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Size',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                          child: Text('S'),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                          child: Text('M'),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: Colors.orange,
                            )),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                          child: Text(
                            'L',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 12),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Price'),
                    RichText(
                      text: TextSpan(
                          text: 'IDR ',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: price,
                                style: TextStyle(color: Colors.white))
                          ]),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey[800],
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.orange,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
