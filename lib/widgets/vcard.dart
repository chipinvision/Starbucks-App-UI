import 'package:flutter/material.dart';

class VCard extends StatefulWidget {
  const VCard({Key? key}) : super(key: key);

  @override
  State<VCard> createState() => _VCardState();
}

class _VCardState extends State<VCard> {

  List<String> imgList = [
    'https://assets.mystarbucks.com.au/imagecache/bestfit/620x634/_files/Beverages/sbx20190624-38274-hotchocolate-ongreen-corelib-srgb.jpg',
    'https://globalassets.starbucks.com/assets/6b385ad21e7245788eb2d2754ab6f823.jpg?impolicy=1by1_wide_topcrop_630',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMUgS9MxcseIWgLfQUKeqARW6cVub8NJCsSA&usqp=CAU',
    'https://assets.mystarbucks.com.au/imagecache/bestfit/280x280/_files/Beverages/sbx20190617-35529-caffelatte-ongreen-corelib-srgb.jpg',
    'https://assets.mystarbucks.com.au/imagecache/bestfit/280x280/_files/Beverages/sbx20181113-21211-vanillabeanfrapp-ongreen-corelib-srgb.jpg',
  ];

  List<String> nameList = [
    'Hot Chocolate',
    'White Hot Chocolate',
    'Iced Cappuccino',
    'Caffè Latte',
    'Vanilla Frappuccino'
  ];

  List<String> priceList = [
    '\$400.00',
    '\$350.00',
    '\$325.00',
    '\$485.00',
    '\$500.00',
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
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      imgList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                      nameList[index],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                      priceList[index],
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  trailing: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.add,
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
