import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {

  List<String> imgList = [
    'https://globalassets.starbucks.com/assets/f12bc8af498d45ed92c5d6f1dac64062.jpg?impolicy=1by1_tight_288',
    'https://globalassets.starbucks.com/assets/d668acbc691b47249548a3eeac449916.jpg?impolicy=1by1_tight_288',
    'https://globalassets.starbucks.com/assets/3eab25199e994b689fa5c047fc31f217.jpg?impolicy=1by1_tight_288',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4lxvsaz6IEQ47VaAdxFsPgOFG4ywHDwukFw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXwynH77Zovw7jcAcbHEpO6rhTyTZ9J3RfAg&usqp=CAU',
    'https://globalassets.starbucks.com/assets/c51376156a204e69aba133d3b9009171.jpg?impolicy=1by1_tight_288',
  ];

  List<String> nameList = [
    'Hot Coffees',
    'Hot Teas',
    'Hot Drinks',
    'Cold Coffee',
    'Frappuccino',
    'Cold Drinks',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 400,
        width: double.infinity,
        margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 2,
                color: const Color(0xff53E88B),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        imgList[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    nameList[index],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  trailing: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
