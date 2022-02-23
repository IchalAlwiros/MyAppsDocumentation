import 'package:flutter/material.dart';
import 'package:flutter_basic_forme/pages/opener/cardof.dart';
import 'package:flutter_basic_forme/pages/opener/openermodel/modelcard.dart';
// import 'package:laundry_app_ui/models/order.dart';
// import 'package:laundry_app_ui/utils/constants.dart';
// import 'package:laundry_app_ui/widgets/order_card.dart';

class LatestOrders extends StatelessWidget {
  final List<Order> orders = [
    Order(
      //id: 507,
      //deliveryAddress: "New Times Square",
      arrivalDate: DateTime(2022, 1, 2),
      placedDate: DateTime(2022, 1, 2),
      status: OrderStatus.DELIVERING,
    ),
    Order(
      // id: 536,
      // deliveryAddress: "Victoria Square",
      arrivalDate: DateTime(2020, 1, 21),
      placedDate: DateTime(2020, 1, 19),
      status: OrderStatus.PICKING_UP,
    ),
    Order(
      // id: 536,
      // deliveryAddress: "Victoria Square",
      arrivalDate: DateTime(2020, 1, 21),
      placedDate: DateTime(2020, 1, 19),
      status: OrderStatus.PICKING_UP,
    ),
    // Order(
    //   id: 536,
    //   deliveryAddress: "Victoria Square",
    //   arrivalDate: DateTime(2020, 1, 21),
    //   placedDate: DateTime(2020, 1, 19),
    //   status: OrderStatus.PICKING_UP,
    // )
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned(
        //     right: 6.0,
        //     top: 10.0,
        //     child: Opacity(
        //       opacity: 0.3,
        //       child: Image.asset(
        //         "assets/images/Pas Fot.png",
        //       ),
        //     ),
        //   ),

       Container(
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Upload",
                    style: TextStyle(
                      color: Color.fromRGBO(19, 22, 33, 1),
                      fontSize: 18.0,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10.0,
              ),
              //physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                // Lets pass the order to a new widget and render it there
                return OrderCard(
                  order: orders[index],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 15.0,
                );
              },
              itemCount: orders.length,
            )
            // Let's create an order model
          ], 
        ),
      ),
      ]
    );
  }
}
