import 'package:flutter/material.dart';
import 'package:untitled5/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}):
        assert(item!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),

        child: Card(
          shape: StadiumBorder(),
          child: ListTile(

            leading: Image.network(item.imgUrl,),
            title: Text(item.name),
            subtitle: Text(item.desc),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.attach_money,color: Colors.black87),
                Text("${item.price}",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                )),
              ],
            ),

          ),
        ),

    );
  }
}
