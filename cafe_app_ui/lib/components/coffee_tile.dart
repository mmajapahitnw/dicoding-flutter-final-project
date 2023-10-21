import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 24),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // menu item image
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8,),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('lib/images/affogato.jpg'),
              ),
            ),
            
            // name and desc
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Affogato', style: TextStyle(fontSize: 20),),
                  SizedBox(height: 2,),
                  Text('Ice Cream Kissed by Espresso', style: TextStyle(color: Colors.grey,),)
                ],
              ),
            ),
            
            // price and buy
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('IDR 25000'),
                  Container(
                    padding: const EdgeInsets.all(4),
                    child: Icon(Icons.add),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6)
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
