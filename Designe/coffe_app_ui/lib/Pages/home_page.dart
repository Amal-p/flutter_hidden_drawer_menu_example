import 'package:coffe_app_ui/util/coffe_tile.dart';
import 'package:coffe_app_ui/util/coffe_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeType = [
    [
      'Cappuccino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],
    [
      'Tea',
      false,
    ],
  ];

  //CoffeTypeSelected
  void CoffeTypeSelected(int index) {
    setState(() {
      for (var i = 0; i < coffeType.length; i++) {
        coffeType[i][1] = false;
      }
      coffeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ],
        ),
        body: Column(
          children: [
            // Find the best coffe for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Find the best coffe fore you !",
                style: GoogleFonts.bebasNeue(
                  fontSize: 56,
                ),
              ),
            ),

            //search bar
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Find your Coffe....',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            //horizontal list of coffe type

            Container(
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coffeType.length,
                    itemBuilder: (context, index) {
                      return CoffeType(
                        coffe_Type: coffeType[index][0],
                        isSelected: coffeType[index][1],
                        onTap: () {
                          CoffeTypeSelected(index);
                        },
                      );
                    })),

            //List of coffe horizontal

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeTile(
                  coffeeImagePath: 'assets/images/coffe_2.jpg',
                  coffeeName: 'Latte',
                  coffeePrize: '140',
                ),
                CoffeTile(
                  coffeeImagePath: 'assets/images/coffe_1.jpg',
                  coffeeName: 'Cappuccino',
                  coffeePrize: '200',
                ),
                CoffeTile(
                  coffeeImagePath: 'assets/images/coffe_3.jpg',
                  coffeeName: 'Coffee',
                  coffeePrize: '80',
                ),
              ],
            ))
          ],
        ));
  }
}
