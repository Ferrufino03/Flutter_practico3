import 'package:flutter/material.dart';
import 'my_cards.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final ValueNotifier<bool> _notificationIndicatorVisible = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IgnorePointer(
              ignoring: true, // Esto hace que el icono no sea interactivo
              child: IconButton(
                onPressed: null,
                icon: Icon(Icons.menu),
              ),
            ),
            bottom: const TabBar(
              indicatorColor: Color.fromARGB(255, 242, 52, 131),
              indicatorWeight: 4,
              tabs: [
                Tab(
                  icon: Text(
                    '                  TRIPS                  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                ),
                Tab(
                  icon: Text(
                    '                 HOTELS                 ',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                )
              ],
            ),
            actions: <Widget>[
              Builder(
                builder: (context) => Stack(
                  alignment: Alignment.topRight,
                  children: [
                    IgnorePointer(
                      child: IconButton(
                        onPressed: null,
                        icon: Icon(Icons.notifications_none_outlined),
                      ),
                    ),
                    ValueListenableBuilder<bool>(
                      valueListenable: _notificationIndicatorVisible,
                      builder: (context, visible, child) {
                        return Visibility(
                          visible: visible,
                          child: Container(
                            margin: EdgeInsets.only(top: 45, right: 21),
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 253, 10, 125),
                              shape: BoxShape.circle,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              IgnorePointer(
                child: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.search),
                ),
              ),
            ],
            title: const Text(
              'Bookings',
              style: TextStyle(fontSize: 15),
            ),
            centerTitle: true,
          ),
          body: const TabBarView(children: [
            Column(
              children: cardExamples,
            ),
            Column(
              children: cardExamples,
            ),
          ]),
          backgroundColor: Color.fromARGB(255, 227, 227, 227),
        ),
      ),
    );
  }
}
