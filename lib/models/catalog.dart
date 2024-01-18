
class CatalogModel{
 static List<Item> items=[];

static Item getById(int id)=>items.firstWhere((element) => element.id==id, orElse: null);
static Item getByPosition(int pos)=>items[pos];
}
class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imgUrl;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.imgUrl,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    //a factory constructor is a special type of constructor that allows
    // you to control the creation of instances of a class.
    // It's often used in cases where you need more flexibility in creating objects than what a regular constructor provides.
    return Item(
      id: map["id"] ?? 0,
      name: map["name"] ?? "",
      desc: map["desc"] ?? "",
      price: map["price"] ?? 0,
      color: map["color"] ?? "",
      imgUrl: map["image"] ?? "",
    );
  }

  //toMap gives us opposite of fromMap i.e. making map from class
  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": imgUrl,
  };
}

