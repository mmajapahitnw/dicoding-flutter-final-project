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
    ['Cappuccino', true],
    ['Latte', false],
    ['Black', false],
    ['White', false],
    ['Tea', false],
  ];

  // method if user change coffee type
  void coffeeTypeSelected(int index) {
    setState(() {
      for(int i = 0; i < coffeeTypes.length; i++) {
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
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Icon(Icons.person),
          )
        ],
      ),
      body: Column(
        children: [
          // header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'FIND THE BEST COFFEE FOR YOU',
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 56,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
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
          SizedBox(
            height: 24,
          ),

          // coffe type scrollable
          Container(
            height: 50,
            child: ListView.builder(
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
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTile(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
    );
  }
}
