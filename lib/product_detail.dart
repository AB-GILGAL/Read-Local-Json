import 'package:flutter/material.dart';
import 'package:local_json_file_app/model/product_model.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductsModel productsModel;
  const ProductDetailPage({Key? key, required this.productsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: const Text(
          "Product Details",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(productsModel.pImg!),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productsModel.pName!,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),),
          
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text: TextSpan(
                  children: [
                    const TextSpan(text: "Price: ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )),
                    TextSpan(text: "USD ${productsModel.pPrice}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    )),
                  ]
                ),),
                 const Row(
                  children:  [
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star,color: Colors.amber,),
                    Icon(Icons.star_half,color: Colors.amber,),
                    Icon(Icons.star_border,color: Colors.amber,)
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.3,
              child: Text(productsModel.pDescription!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18
              ),),
            ),

            Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal[900]),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ))
                ),
                onPressed: (){},
                child: const Text("Add to Cart")))
              ],
            ),
          ),

        ],
      ),
    );
  }
}
