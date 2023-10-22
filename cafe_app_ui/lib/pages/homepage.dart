import 'package:cafe_app_ui/components/coffee_tile.dart';
import 'package:cafe_app_ui/components/coffee_type.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of coffee types and their status
  final List coffeeTypes = [
    ['Signature', true],
    ['Latte', false],
    ['Black', false],
    ['White', false],
    ['Filter', false],
    ['Tea & Tisane', false],
    ['Pastry', false],
    ['Snack', false],
    ['Pasta', false],
    ['Sandwiches', false],
    ['Main Dish', false],
  ];

  final List coffeeTilesInfo = [
    // [ image_path, item_name, item_desc, price ]
    [
      'lib/images/affogato.jpg',
      'Affogato',
      'Ice Cream Kissed by Espresso',
      '30000',
    ],
    [
      'lib/images/allen.jpg',
      'Allen Immersion',
      'Aromatics, Creamy, and Bold Coffee',
      '25000',
    ],
    [
      'lib/images/espresso.jpg',
      'Espresso Shot',
      'Strong and Refreshing Single 30mL / Double 60mL',
      '18000',
    ],
    [
      'lib/images/latte.jpg',
      'White Creamy Latte',
      'Everyone\'s favorite, Simply & Creamy Buddies!',
      '25000',
    ],
    [
      'lib/images/machiato.jpg',
      'Machiato',
      'Perfect Fusion Between Coffee and Macha',
      '20000',
    ],
    [
      'lib/images/palmeira.jpg',
      'Palmeira',
      'Palm & Strong Coffee Booster',
      '23000',
    ],
  ];

  // method if user change coffee type
  void coffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeeTypes.length; i++) {
        coffeeTypes[i][1] = false;
      }
      coffeeTypes[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: ListView(
        children: [
          // header
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'FIND THE BEST COFFEE FOR YOU',
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 56,
              ),
            ),
          ),
          const SizedBox(height: 26),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 6),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search your coffee...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          const SizedBox(height: 36),

          // coffee type scrollable
          SizedBox(
            height: 50,
            child: ListView.builder(
              padding: const EdgeInsets.only(right: 24),
              scrollDirection: Axis.horizontal,
              itemCount: coffeeTypes.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                  name: coffeeTypes[index][0],
                  isSelected: coffeeTypes[index][1],
                  onTap: () {
                    coffeeTypeSelected(index);
                  },
                );
              },
            ),
          ),

          // menu tiles
          Container(
            height: 310,
            child: ListView.builder(
              padding: const EdgeInsets.only(right: 24),
              scrollDirection: Axis.horizontal,
              itemCount: coffeeTilesInfo.length,
              itemBuilder: (context, index) {
                return CoffeeTile(
                  imagePath: coffeeTilesInfo[index][0],
                  name: coffeeTilesInfo[index][1],
                  desc: coffeeTilesInfo[index][2],
                  price: coffeeTilesInfo[index][3],
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
              ),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
    );
  }
}
