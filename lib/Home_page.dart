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
    List<dynamic> Products1 = [
      {
        'image': 'assets/1.png',
        'Text': 'Wishcare Hair growth Serum Concentrate...',
        'originalPrice' :  '100.0',
        'double discountedPrice' : '80.0'

      },
    ];
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              Image.asset(
                "assets/Vector.jpg",
                // width: 100, // Adjust the width as needed
                // height: 100, // Adjust the height as needed
              ),
              SizedBox(width: 10),
              // Add some space between the image and text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    style: TextStyle(fontSize: 16, color: Color(0xFFC91DA9)),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: ' Search any product..',
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0))),
              ),
              Image.asset(
                "assets/Banner.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Our Categories",
                style: TextStyle(fontSize: 20),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 150.0,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => detail()),
                      // );
                    },
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
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hot Seller", style: TextStyle(fontSize: 20)),
                  ElevatedButton(onPressed: () {}, child: Text("View All"))
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: Products1.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0, // Space between adjacent columns
                  mainAxisSpacing: 10.0,
                  mainAxisExtent: 194
                ),
                itemBuilder: (context, index) {
                  return Container(
                   // alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Products1[index]['image'],
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          Products1[index]['Text'],
                          style: TextStyle(fontSize: 14),
                        ),
                        Text("₹${600}"),
                        Text(
                        "₹${Products1[index]["originalPrice"]}",
                          style: TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(height: 10),
                        Text(
                        "₹${Products1[index]["originalPrice"]}",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  );
                },
              )
            ]),
          ),
        ));
  }
}
