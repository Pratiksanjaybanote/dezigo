import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> imageUrls = [
      "assets/Banner.png",
      "assets/Banner.png",
      "assets/Banner.png",
    ];
    List<dynamic> Products = [
      {
        'image': 'assets/Cosmetics.png',
        'Text': 'Metals',
      },
      {
        'image': 'assets/Groceries.png',
        'Text': 'Groceries',
      },
      {
        'image': 'assets/Electronics.png',
        'Text': 'Electronics',
      },
      {
        'image': 'assets/Cosmetics.png',
        'Text': 'Metals',
      },
      {
        'image': 'assets/Groceries.png',
        'Text': 'Groceries',
      },
      {
        'image': 'assets/Electronics.png',
        'Text': 'Electronics',
      },
    ];
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/Vector.jpg",
                    // width: 100, // Adjust the width as needed
                    // height: 100, // Adjust the height as needed
                  ),
                  SizedBox(width: 10),
                  // Add some space between the image and text
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome,",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFC91DA9)),
                      ),
                      Text(
                        "Pratik Banote",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFFC91DA9)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: ' Search any product..',
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0))),
              ),
            ),
            Image.asset(
              "assets/Banner.png",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Our Categories",
                style: TextStyle(fontSize: 20),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: Products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisExtent: 170.0),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => detail()),
                      // );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 90,
                          width: 90,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                Products[index]['image'],
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                Products[index]['Text'],
                                style: TextStyle(fontSize: 14),
                              )
                            ],
                          )),
                    ),
                  ),
                );
              },
            ),
          ]),
        ));
  }
}
