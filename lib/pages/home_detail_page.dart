import 'package:flutter/material.dart';
import 'package:untitled5/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.transparent,
      ), 
      backgroundColor: Colors.white70,
      bottomNavigationBar:Container(
        color: Color(0xFFFAFAFA),
        height: 90,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right:32,left: 22),
          children: [
            "\$${catalog.price}".text.xl2.bold.make(),
            ElevatedButton(onPressed: (){},style: ButtonStyle(
              shape: MaterialStateProperty.all(StadiumBorder(),)
            ),
                child: "Add to cart".text.xl.make()
            ).wh(120, 50)
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded( // Wrap the Column with Expanded
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, // Add this line
                children: [
                  Hero(
                    tag: Key(catalog.id.toString()),
                    child: Center(
                      child: Image.network(catalog.imgUrl),
                    ),
                  ).h32(context),
                  Expanded(
                    child: VxArc(
                      height: 35,
                      arcType: VxArcType.convey,
                      edge: VxEdge.top,
                      child: Container(
                        color: Color(0xFFFAFAFA),
                        child: Column(
                          children: [
                            catalog.name.text.bold.xl.make(),
                            catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                            "Discover a captivating selection of books for all the bookworms out there. Immerse yourself in thrilling adventures, heartwarming tales, and mind-bending mysteries. Fuel your imagination with every page you turn. Revamp your living space with our stunning home decor. From elegant wall art to cozy furnishings, create a space that reflects your unique style and personality."
                                .text.textStyle(context.bodySmall).make().p16().px16()
                          ],
                        ).py64(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
