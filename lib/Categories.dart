import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

List<String> Cosmetics = [
  'All',
  'Face Cream',
  ' Lipstick',
  'Sunscreen',
  'Shampoo',
];

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Select Item'),
              bottom: TabBar(
                isScrollable: true,
                splashBorderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
                indicatorColor: Color(0xFFC91DA9),
                labelColor: Color(0xFFC91DA9),
                tabs: List.generate(
                  Cosmetics.length,
                  (index) => Tab(text: Cosmetics[index]),
                ),
              ),
            ),
            body: TabBarView(children: [
              Container(),
            ])));
  }
}
