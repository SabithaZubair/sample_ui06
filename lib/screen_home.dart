import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  List customBottomImage = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVaRqJ7z3wjo9Zd2TKsjJHkHyAlCNjY26CjQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXkLpfz4wMMqvWdPqGcMpSbY26x9L93piT2g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXGPVZv-HQ-CYzQzs-TM4aSh3ICOGVlakbmA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvi7HpQ-_PMSMOFrj1hwjp6LDcI-jm3Ro0Xw&usqp=CAU'
  ];
  List profileName = ['@bernice_1', '@santiagi18', '@afic3ray', '@ray98'];
  List<Color> color = [
    Colors.pink.shade500,
    Colors.pink.shade500,
    Colors.grey.shade300,
    Colors.grey.shade300,
    Colors.grey.shade300
  ];
  List<Icon> TabIcon = [
    Icon(
      Icons.favorite,
      color: Colors.red,
    ),
    Icon(
      Icons.thumb_up,
      color: Colors.yellow.shade700,
    ),
    Icon(
      Icons.bike_scooter,
      color: Colors.grey,
    ),
    Icon(
      Icons.sentiment_very_dissatisfied,
      color: Colors.yellow,
    ),
    Icon(
      Icons.flash_on,
      color: Colors.yellow.shade700,
    )
  ];
  List<Widget> tabText = const [
    Text(
      '98',
      style: TextStyle(color: Colors.white60),
    ),
    Text(
      '88',
      style: TextStyle(color: Colors.white60),
    ),
    Text(
      '84',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      '72',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      '14',
      style: TextStyle(color: Colors.black),
    ),
  ];
  List<Widget> bottomNavigationIcon = [
    const Icon(
      Icons.home,
      color: Colors.black,
    ),
    Icon(
      Icons.video_camera_front,
      color: Colors.grey.shade400,
    ),
    const CircleAvatar(
      backgroundColor: Colors.deepOrangeAccent,
      radius: 20,
      child: Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
    Icon(
      Icons.search_off_rounded,
      color: Colors.grey.shade400,
    ),
    Icon(
      Icons.person,
      color: Colors.grey.shade400,
    ),
  ];
  List<Widget> BottomNavigationbarText = [
    Text(
      'Home',
      style: TextStyle(color: Colors.black),
    ),
    Text(
      'Videos',
      style: TextStyle(color: Colors.black38),
    ),
    Text(
      ' ',
    ),
    Text(
      'Search',
      style: TextStyle(color: Colors.black38),
    ),
    Text(
      'Account',
      style: TextStyle(color: Colors.black38),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
              preferredSize: Size(double.infinity, 110),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 78,
                          height: 78,
                          decoration: BoxDecoration(
                              color: Colors.orange.shade900,
                              shape: BoxShape.circle),
                          child: Icon(Icons.add),
                        ),
                        const Text(
                          'Your story',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                        child: Container(
                          height: 110,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: customBottomImage.length,
                              itemBuilder: (BuildContext context, index) {
                                return Padding(
                                  padding: EdgeInsets.all(2),
                                  child: customAppbarBottom(
                                    image: customBottomImage[index],
                                    profileName: profileName[index],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRczQ38KpzzA8jbdjlk6zMB5pdBDG4i-af5g&usqp=CAU'),
                      )),
                ),
                title: const Text(
                  '@harry_lee',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
                subtitle: const Text(
                  '25 min ago',
                  style: TextStyle(
                      color: Colors.black26, fontWeight: FontWeight.w800),
                ),
                trailing: const Icon(
                  Icons.more_horiz_outlined,
                  size: 30,
                ),
              ),
            ),
            Container(
              height: 310,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp7afdxlw-29fTLBieOmVdPK1xUo9tZUMdyw&usqp=CAU'),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.music_note, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Black Eyes Blue',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Corey Taylor',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const Icon(Icons.add),
                  const SizedBox(
                    width: 13,
                  ),
                  Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Icon(
                        Icons.play_arrow_outlined,
                        size: 28,
                      )),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 15),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext ctx, ind) {
                      return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: customTab(
                            color: color[ind],
                            icon: TabIcon[ind],
                            text: tabText[ind],
                          ));
                    }),
              ),
            )
          ],
        )),
        bottomNavigationBar: Container(
          height: 100,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, index) {
                return customBottomNavigationBar(
                    icon: bottomNavigationIcon[index],
                    text: BottomNavigationbarText[index]);
              }),
        )
        //     BottomNavigationBar(unselectedItemColor: Colors.black, items: [
        //   BottomNavigationBarItem(
        //     icon: Icon(
        //       Icons.home,
        //       color: Colors.black,
        //     ),
        //     label: 'Home',
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(
        //       Icons.video_camera_front,
        //       color: Colors.black38,
        //     ),
        //     label: 'Videos',
        //   ),
        //   BottomNavigationBarItem(
        //       icon: CircleAvatar(
        //         backgroundColor: Colors.deepOrangeAccent,
        //         child: Icon(
        //           Icons.add,
        //         ),
        //       ),
        //       label: ' '),
        //   BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.search_rounded,
        //         color: Colors.black38,
        //       ),
        //       label: 'Search'),
        //   BottomNavigationBarItem(
        //       icon: Icon(
        //         Icons.person,
        //         color: Colors.black38,
        //       ),
        //       label: 'Account'),
        // ]),
        );
  }

  customAppbarBottom({
    required image,
    required profileName,
  }) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.red, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(image),
                  )),
            ),
          ),
        ),
        Text(
          profileName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ],
    );
  }

  customTab({
    required color,
    required icon,
    required text,
  }) {
    return Container(
      width: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          text,
        ],
      ),
    );
  }

  customBottomNavigationBar({required icon, required text}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [icon, text],
          ),
        ),
      ],
    );
  }
}
