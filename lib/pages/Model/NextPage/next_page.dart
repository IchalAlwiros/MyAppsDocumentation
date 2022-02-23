import 'package:faker/faker.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/Model/model/models_product.dart';
import 'package:flutter_basic_forme/pages/theme/text_style.dart';

class NextPage extends StatelessWidget {
  Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> productdummy = List.generate(20, (index) {
      return Product(
        judul: faker.food.restaurant(),
        harga: 10000 + Random().nextInt(100000),
        deskripsi: faker.lorem.sentence(),
        imageUrl:
            'https://i.picsum.photos/id/327/200/200.jpg?hmac=-qY8ApRJQJVHwDBxBmp-qnzM8xmqT5aJwHUXxZy3RAM',
      );
    });
    return Scaffold(
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return GridTile(
            
              child: Image.network(
                productdummy[index].imageUrl,
              ),
              footer: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0)
                  )
                ),
                height: 80,
                //color: Colors.orange,
                // alignment: Alignment.center,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      productdummy[index].judul,
                      style: styleText4,
                      maxLines: 1,
                    ),
                    Text(
                      ' Rp ${productdummy[index].harga.toString()}',
                      style: styleText4,
                      maxLines: 1,
                    ),
                    Text(
                      productdummy[index].deskripsi,
                      style: styleText4,
                      maxLines: 1,
                    )
                  ],
                ),
              ));
        },
        itemCount: productdummy.length,
      ),
    );
  }
}
