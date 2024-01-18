import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: "Cart".text.bold.xl.textStyle(context.bodyLarge).makeCentered(),
      ),
      body: Column(
        children: [
          Placeholder().p32().expand(),
          Divider(),
          _CartTotal()
        ],
      ),
    );
  }
}
class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           "\$9999".text.xl4.black.bold.make(),
          30.widthBox,
          ElevatedButton(
              onPressed: (){},
              child: "BUY".text.xl.make()
          )
        ],
      ),
    );
  }
}

