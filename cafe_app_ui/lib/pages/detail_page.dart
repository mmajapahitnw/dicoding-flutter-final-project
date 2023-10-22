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
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // item name and desc on the left
                    SizedBox(
                      width: MediaQuery.of(context).size.width-24-24-120-24-10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(fontSize: 24),
                          ),
                          const SizedBox(height: 12),
                          Text(desc, style: const TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),

                    // 3 boxes on the right -> coffee, milk, and roast
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // coffee and milk row
                        SizedBox(
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
                                child: const Column(
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
                                child: const Column(
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
                        const SizedBox(height: 20),

                        // medium roasted box
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
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
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Enjoy AWOR\'s spin on $name. Made with love, a signature treat for weary soul.',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Size',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
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
                              EdgeInsets.symmetric(vertical: 8, horizontal: (MediaQuery.of(context).size.width-24-24-30-30)/6),
                          child: const Text('S'),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: (MediaQuery.of(context).size.width-24-24-30-30)/6),
                          child: const Text('M'),
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
                              EdgeInsets.symmetric(vertical: 8, horizontal: (MediaQuery.of(context).size.width-24-24-30-30)/6),
                          child: const Text(
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
      bottomNavigationBar: SizedBox(
        height: 65,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 12),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Price'),
                    RichText(
                      text: TextSpan(
                          text: 'IDR ',
                          style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: price,
                                style: const TextStyle(color: Colors.white))
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
                  child: const Center(
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
  State<FavoriteButton> createState() => _FavoriteButtonState();
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
