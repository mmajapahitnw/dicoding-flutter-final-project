import 'package:cafe_app_ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String imagePath;
  final String name;
  final String desc;
  final String price;

  const CoffeeTile({
    super.key,
    required this.imagePath,
    required this.name,
    required this.desc,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return DetailPage(
                imagePath: imagePath,
                name: name,
                desc: desc,
                price: price,
              );
            }));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        // foundation tile
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // menu item image
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  left: 8,
                  right: 8,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(imagePath),
                ),
              ),

              // name and desc
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // item name
                    Text(
                      name,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 2,
                    ),

                    // item description
                    Text(
                      desc,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),

              // price and buy
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // item price
                    Text('IDR $price'),

                    // buy button
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Icon(Icons.add),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(6)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
