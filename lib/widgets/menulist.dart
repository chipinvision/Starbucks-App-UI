import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {

  List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTW4Ipx00cPOawnaf7bDhftU6SQ6cv3kYnOnYSo7EJfkmaYolA545Bmr9Y-pQuqEAOJuIY&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx56l7ARIOqAB_Q0lVJCXnYNjgON2N9aF6H0Zwa7CyAyIpelLkDKRYP15hzpbG_x8hYNY&usqp=CAU',
    'https://globalassets.starbucks.com/assets/d8097dc1a47b45dda2f7d1f7142cc7b0.jpg?impolicy=1by1_medium_630',
    'https://globalassets.starbucks.com/assets/d7d7b87ca1c841e8b7f37482ec57e4ba.jpg?impolicy=1by1_wide_640',
    'https://i.pinimg.com/736x/0a/dd/6c/0add6c797137f723435ebeb7000626b0.jpg',
  ];

  List<String> nameList = [
    'Hot Breakfast',
    'Lunch',
    'Bakery',
    'Snacks & Sweet',
    'Oatmeal & Yoghurt',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 350,
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
