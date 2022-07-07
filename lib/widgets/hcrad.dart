import 'package:flutter/material.dart';

class HCard extends StatefulWidget {
  const HCard({Key? key}) : super(key: key);

  @override
  State<HCard> createState() => _HCardState();
}

class _HCardState extends State<HCard> {

  List<String> imgList = [
    'https://content-prod-live.cert.starbucks.com/binary/v2/asset/137-78745.jpg',
    'https://content-prod-live.cert.starbucks.com/binary/v2/asset/137-78746.jpg',
    'https://content-prod-live.cert.starbucks.com/binary/v2/asset/137-78760.jpg',
    'https://content-prod-live.cert.starbucks.com/binary/v2/asset/137-78759.jpg',
  ];

  List<String> nameList = [
    'Chocolate Cream Cold Brew',
    'Vanilla Sweet Cream Cold Brew',
    'Lime Frosted Coconut Bar',
    'Cookies & Cream Cake Pop',
  ];


  List<String> priceList = [
    '\$35.00',
    '\$45.00',
    '\$25.00',
    '\$10.00',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: imgList.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
              width: 233,
              height: 350,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Container(
                    width: 230,
                    height: 305,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xff53E88B),
                    ),
                    padding: const EdgeInsets.only(left: 7, right: 12, top: 16, bottom: 8, ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: SizedBox(
                                height: 184,
                                width: MediaQuery.of(context).size.width,
                                child: Image.network(
                                  imgList[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Column(
                          children: [
                            Text(
                              nameList[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    priceList[index],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white,
                                    child: IconButton(
                                      onPressed: (){},
                                      icon: const Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ],
              ),
            );
        },
      ),
    );
  }
}
