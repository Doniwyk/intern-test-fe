import 'package:flutter/material.dart';
import 'package:internship_test/widget/card_product.dart';

class CartridgeKingsHomePage extends StatelessWidget {
  const CartridgeKingsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.area_chart_outlined,
                      color: Colors.orange, size: 38),
                  SizedBox(width: 10),
                  Text(
                    'CARTRIDGE KINGS',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 32),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4)),
                        hintText: 'Search',
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      onPressed: () {},
                      icon:
                          const Icon(Icons.shopping_cart, color: Colors.white),
                      label: const Text('CART (1)',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Navigation Bar
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15),
              padding: const EdgeInsets.symmetric(vertical: 6),
              color: Colors.blue,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: null,
                    child: Text('HOME',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text('INK CARTRIDGES',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text('TONER CARTRIDGES',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text('CONTACT US',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text('LOGIN / REGISTER',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),

            // Search Section
            Stack(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/bg_image.jpg',
                      fit: BoxFit.cover,
                      height: 300,
                      width: double.infinity,
                    ),
                    Container(
                      height: 250,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                ),
                Positioned(
                  top: 50,
                  left: MediaQuery.of(context).size.width * 0.15,
                  right: MediaQuery.of(context).size.width * 0.15,
                  child: Column(
                    children: [
                      const Text(
                        'FIND THE RIGHT CARTRIDGES FOR YOUR PRINTER',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        color: Colors.white,
                        child: DefaultTabController(
                          length: 2, // Number of tabs
                          child: Column(
                            children: [
                              // Tab bar
                              const TabBar(
                                labelColor: Colors.white,
                                unselectedLabelColor: Colors.black,
                                indicator: BoxDecoration(
                                  color: Colors.blue,
                                ),
                                indicatorSize: TabBarIndicatorSize.tab,
                                tabs: [
                                  Tab(
                                    child: Text(
                                      '3-Step Easy Search',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      'Search by Serial Number',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),

                              // Tab bar views
                              SizedBox(
                                height: 70,
                                child: TabBarView(
                                  children: [
                                    // Tab 1 content
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: 1,
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 2),
                                                  ),
                                                ],
                                              ),
                                              child: DropdownButtonFormField<
                                                  String>(
                                                hint: const Text(
                                                    '1. Printer Brand'),
                                                decoration:
                                                    const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10.0),
                                                  border: InputBorder.none,
                                                ),
                                                items: const [
                                                  DropdownMenuItem(
                                                      value: 'hp',
                                                      child: Text('HP')),
                                                  DropdownMenuItem(
                                                      value: 'canon',
                                                      child: Text('Canon')),
                                                  DropdownMenuItem(
                                                      value: 'epson',
                                                      child: Text('Epson')),
                                                ],
                                                onChanged: (value) {},
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          // Dropdown 2: Printer Series
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: 1,
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 2),
                                                  ),
                                                ],
                                              ),
                                              child: DropdownButtonFormField<
                                                  String>(
                                                hint: const Text(
                                                    '2. Printer Series'),
                                                decoration:
                                                    const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10.0),
                                                  border: InputBorder.none,
                                                ),
                                                items: const [
                                                  DropdownMenuItem(
                                                      value: 'series1',
                                                      child: Text('Series 1')),
                                                  DropdownMenuItem(
                                                      value: 'series2',
                                                      child: Text('Series 2')),
                                                  DropdownMenuItem(
                                                      value: 'series3',
                                                      child: Text('Series 3')),
                                                ],
                                                onChanged: (value) {},
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          // Dropdown 3: Printer Model
                                          Expanded(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                    spreadRadius: 1,
                                                    blurRadius: 5,
                                                    offset: const Offset(0, 2),
                                                  ),
                                                ],
                                              ),
                                              child: DropdownButtonFormField<
                                                  String>(
                                                hint: const Text(
                                                    '3. Printer Model'),
                                                decoration:
                                                    const InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10.0),
                                                  border: InputBorder.none,
                                                ),
                                                items: const [
                                                  DropdownMenuItem(
                                                      value: 'model1',
                                                      child: Text('Model 1')),
                                                  DropdownMenuItem(
                                                      value: 'model2',
                                                      child: Text('Model 2')),
                                                  DropdownMenuItem(
                                                      value: 'model3',
                                                      child: Text('Model 3')),
                                                ],
                                                onChanged: (value) {},
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.orange,
                                              foregroundColor: Colors.white,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20.0,
                                                      vertical: 16.0),
                                              textStyle: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              elevation: 3,
                                            ),
                                            onPressed: () {},
                                            child:
                                                const Text('FIND CARTRIDGES'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Tab 2 content
                                    const Center(
                                      child: Text(
                                        'Search by Serial Number Content',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Featured Products Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  'FEATURED PRODUCTS',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Product Grid
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                children: [
                  productCard(
                      'HP 62 Black Ink Cartridge', '\$9.49', '\$5.99', true),
                  productCard('Canon MF-3110 Toner', '\$36.45', '', false),
                  productCard('HP 62 Black Ink Cartridge', '\$9.49', '', false),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
