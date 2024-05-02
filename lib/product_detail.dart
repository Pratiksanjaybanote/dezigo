import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List<dynamic> sizes = ['30ML', '40ML'];
  int selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                "assets/detail.png",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Wishcare Hair Growth Serum Concentrate",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 40,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sizes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        print('Selected Size: ${sizes[selectedIndex]}');
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Colors.blue
                              : Colors.white,
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          sizes[index],
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
        
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "₹${699}",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    "₹${'999'}",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,fontSize: 20,color:Colors.black.withOpacity(0.3)),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '${30}% ',
                    style: TextStyle(color: Colors.green,fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Description :",style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the"),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(

                decoration: InputDecoration(
                  hintText: '    Ceheck Pincod',
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(
                      color: Colors.blue, // Set your desired border color here
                      width: 1.0, // Set the border width
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {
                        // Add your button press logic here
                      },
                      child: Text('Check', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => (OTP())),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFC91DA9),
                      fixedSize: Size(350, 60)),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white,fontSize: 16),
                  )),
            ),


          ],
        ),
      ),
    );
  }
}

