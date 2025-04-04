import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/orderReceavedList.dart';
import 'package:mainproject/MVVM/VIEW/SCREEN/ShopOwner/shop_Order/orderSendList.dart';

class Ordersend extends StatefulWidget {
  const Ordersend({super.key});

  @override
  State<Ordersend> createState() => _OrdersendState();
}

class _OrdersendState extends State<Ordersend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Ordersendlist()));
                      },
                      child: Card(
                        color: Colors.white,
                        elevation: 10,
                        child: ListTile(
                          leading: CircleAvatar(),
                          title: Text("Customer Name"),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
