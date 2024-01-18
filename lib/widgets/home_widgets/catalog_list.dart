import 'package:flutter/material.dart';
import 'package:untitled5/models/catalog.dart';
import 'package:untitled5/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(catalog: catalog)));
          },
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(
                catalog.imgUrl,
              ).box.white.p12.roundedFull.make().py12().wh32(context),
            ),
            Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                catalog.name.text.bold.lg.make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: Vx.mOnly(right:32,left: 22),
                  children: [
                    "\$${catalog.price}".text.bold.make(),
                    ElevatedButton(onPressed: (){},
                        child: "Add to cart".text.make().centered()
                    )
                  ],
                )
              ],
            )
            )
          ],
        )
    ).white.roundedLg.square(150).make().py12();
  }
}
