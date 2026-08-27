import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // para walay mo show nga debug chuchu sa upper right sa app bar
      title: 'My App',
      theme: ThemeData(
        brightness: Brightness.dark, // para mahimong dark mode ang app
        scaffoldBackgroundColor: const Color.fromARGB(255, 65, 65, 65),
      ),
      home: _MyHomePageState(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

class _MyHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          '<    Match Details',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
          ),
        ),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Card 1
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ), // a rectangle ngfa dili rounded ang sides
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),

                  child: Column(
                    mainAxisAlignment: .start, // mao ni ang x axis na alignment (just adjust kung asa nimo ganahan i position)
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // mao ni ang y axis na alignment

                        children: const [
                          Text(
                            'My Team',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(width: 60),

                          Text(
                            '12',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                            ),
                          ),

                          Icon(
                            Icons.gps_fixed_outlined,
                            color: Colors.white70,
                            size: 20,
                          ),

                          Text(
                            '14',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                            ),
                          ),

                          SizedBox(width: 60),

                          Text(
                            'Opponent',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //Card 2
              //Note: Dapat dili ni card dapat stack hehe dili maka insert shits above an object
              Card(
                clipBehavior: Clip.antiAlias, // crucial para mo follow ang image sa shape sa card
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ), // a rectangle ngfa dili rounded ang sides
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/ascent.jpg',
                      height: 175,
                      width: 600,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),

              // My Team Card
              Card(
                color: Colors.transparent, // para mahimong transparent ang card
                margin: EdgeInsets.zero, // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 12.0),
                      Text(
                        'My Team',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),

                      SizedBox(width: 143),

                      Icon(Icons.bar_chart, size: 20, color: Colors.white),

                      SizedBox(width: 75),

                      Icon(Symbols.skull, size: 20, color: Colors.white),
                    ],
                  ),
                ),
              ),

              // Phoenix Card - Favorite agent hahhaha
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/phoenix.webp'),
                          ),

                          const SizedBox(height: 5),

                          Image.asset(
                            'assets/gold-2.webp',
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Text(
                            'Scyn4pse',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 70),
                      Row(
                        children: [
                          // Text(
                          //   '261',
                          //   style: TextStyle(fontSize: 20, color: Colors.white),
                          // ),
                          // const SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '261',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                    '23',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '21',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '6',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  const SizedBox(width: 50),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    'V',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Sova Card - shackdark haahah
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/sova.webp'),
                          ),

                          const SizedBox(height: 5),

                          Image.asset(
                            'assets/plat-1.webp',
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Text(
                            'ININSIK',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 83),
                      Row(
                        children: [
                          // Text(
                          //   '261',
                          //   style: TextStyle(fontSize: 20, color: Colors.white),
                          // ),
                          // const SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '190',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                    '17',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '21',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '8',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  const SizedBox(width: 50),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    'V',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Chamber Card - agent na nagpa plat sakin hehehehe
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/chamber.webp'),
                          ),

                          const SizedBox(height: 5),

                          Image.asset(
                            'assets/plat-1.webp',
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Text(
                            'Gary Dabid',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 70),
                      Row(
                        children: [
                          // Text(
                          //   '261',
                          //   style: TextStyle(fontSize: 20, color: Colors.white),
                          // ),
                          // const SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '89',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 40),
                                  Text(
                                    '9',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '8',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  const SizedBox(width: 40),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    'V',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Clove Card - grabe op kayni bai
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/clove.webp'),
                          ),

                          const SizedBox(height: 5),

                          // Image.asset(
                          //   'assets/plat-1.webp',
                          //   height: 20,
                          //   width: 20,
                          // ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'ININSIK 2.0',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              Text(
                                'MATCH MVP',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 55),
                      Row(
                        children: [
                          // Text(
                          //   '261',
                          //   style: TextStyle(fontSize: 20, color: Colors.white),
                          // ),
                          // const SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '298',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                    '28',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '23',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '6',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(width: 50),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    'V',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // reyna card - pwede to gage by boss dogs
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/reyna.webp'),
                          ),

                          const SizedBox(height: 5),

                          Image.asset(
                            'assets/gold-2.webp',
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Text(
                            'noobsaur',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 70),
                      Row(
                        children: [
                          // Text(
                          //   '261',
                          //   style: TextStyle(fontSize: 20, color: Colors.white),
                          // ),
                          // const SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '259',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    '21',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '21',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '10',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  const SizedBox(width: 50),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    'V',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Opponent Card
              Card(
                color: Colors.transparent,
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 12.0),
                      Text(
                        'Opponent',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),

                      SizedBox(width: 140),

                      Icon(Icons.bar_chart, size: 20, color: Colors.white),

                      SizedBox(width: 70),

                      Icon(Symbols.skull, size: 20, color: Colors.white),
                    ],
                  ),
                ),
              ),

            // Opponent Sova - wkwkkwkkwkw
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/sova.webp'),
                          ),

                          const SizedBox(height: 5),

                          Image.asset(
                            'assets/plat-1.webp',
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Text(
                            'tibvay',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 95),
                      Row(
                        children: [
                          // Text(
                          //   '261',
                          //   style: TextStyle(fontSize: 20, color: Colors.white),
                          // ),
                          // const SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '190',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                    '20',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '18',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  const SizedBox(width: 50),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    'V',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Opponent Reyna - na reyna diff si ogag hehe
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/reyna.webp'),
                          ),

                          const SizedBox(height: 5),

                          Image.asset(
                            'assets/plat-2.webp',
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Text(
                            'Kreiz',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 102),
                      Row(
                        children: [
                          // Text(
                          //   '261',
                          //   style: TextStyle(fontSize: 20, color: Colors.white),
                          // ),
                          // const SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '191',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    '18',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '21',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  const SizedBox(width: 50),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    'V',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Opponent Raze - feeling supermj eh
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/raze.webp'),
                          ),

                          const SizedBox(height: 5),

                          Image.asset(
                            'assets/plat-1.webp',
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Text(
                            'TranHoang17',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 35),
                      Row(
                        children: [
                          // Text(
                          //   '261',
                          //   style: TextStyle(fontSize: 20, color: Colors.white),
                          // ),
                          // const SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '203',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    '19',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '19',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  const SizedBox(width: 50),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    'V',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Opponent Cypher Card - grabe mag cypher bai
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/cypher.webp'),
                          ),

                          const SizedBox(height: 5),

                          // Image.asset(
                          //   'assets/plat-1.webp',
                          //   height: 20,
                          //   width: 20,
                          // ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Neithl',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              Text(
                                'MATCH MVP',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 80),
                      Row(
                        children: [
                          // Text(
                          //   '261',
                          //   style: TextStyle(fontSize: 20, color: Colors.white),
                          // ),
                          // const SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '246',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                    '23',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '21',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(width: 50),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    'V',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Opponent Brimstone - thank you for your service sir!
              Card(
                margin: EdgeInsets.only(
                  top: 1,
                  bottom: 0,
                  left: 0,
                  right: 0,
                ), // para ma fill ang whole screen, mo leave no space sa screen
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                child: Padding(
                  padding: EdgeInsetsGeometry.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/brimstone.webp'),
                          ),

                          const SizedBox(height: 5),

                          // Image.asset(
                          //   'assets/plat-1.webp',
                          //   height: 20,
                          //   width: 20,
                          // ),
                        ],
                      ),
                      SizedBox(width: 15),
                      Row(
                        children: [
                              Text(
                                'clutch bus cuk', // bastos ng pangalan mo ya
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Row(
                        children: [
                          // Text(
                          //   '261',
                          //   style: TextStyle(fontSize: 20, color: Colors.white),
                          // ),
                          // const SizedBox(width: 20),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '159',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                    '13',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '19',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    '9',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(width: 50),
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  SizedBox(width: 10),

                                  Text(
                                    'V',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
