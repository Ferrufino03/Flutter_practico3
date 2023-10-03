import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 12),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 255, 227, 238),
              child: Icon(
                Icons.airplanemode_active_outlined,
                color: Color.fromARGB(255, 253, 10, 125),
                size: 25,
              ),
            ),
            title: Text('Hawai   ->   Sevilla'),
            subtitle: Text(
                '28 Oct. 2018   ----   11:00AM                        Emirates Airways'),
            trailing: Icon(Icons.more_vert),
          ),
          SizedBox(height: 12),
        ],
      ),
      color: Colors.white,
      margin: EdgeInsets.only(top: 25, left: 15, right: 15),
    );
  }
}

class CardExample2 extends StatelessWidget {
  const CardExample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 12),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 255, 227, 238),
              child: Icon(
                Icons.directions_bus,
                color: Color.fromARGB(255, 253, 10, 125),
                size: 25,
              ),
            ),
            title: Text('Sevilla   ->   Monaco'),
            subtitle: Text(
                '28 Oct. 2018   ----   11:00AM                        Emirates Airways'),
            trailing: Icon(Icons.more_vert),
          ),
          SizedBox(height: 12),
        ],
      ),
      color: Colors.white,
      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
    );
  }
}

class CardExample3 extends StatelessWidget {
  const CardExample3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 12),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 255, 227, 238),
              child: Icon(
                Icons.airplanemode_active_outlined,
                color: Color.fromARGB(255, 253, 10, 125),
                size: 25,
              ),
            ),
            title: Text('Atlanta   ->   Marrakech'),
            subtitle: Text(
                '28 Oct. 2018   ----   11:00AM                        Emirates Airways'),
            trailing: Icon(Icons.more_vert),
          ),
          SizedBox(height: 12),
        ],
      ),
      color: Colors.white,
      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
    );
  }
}

class CardExample4 extends StatelessWidget {
  const CardExample4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 12),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Color.fromARGB(255, 255, 227, 238),
              child: Icon(
                Icons.directions_boat,
                color: Color.fromARGB(255, 253, 10, 125),
                size: 25,
              ),
            ),
            title: Text('Geneva  ->  Mexico City'),
            subtitle: Text(
                '28 Oct. 2018   ----   11:00AM                        Emirates Airways'),
            trailing: Icon(Icons.more_vert),
          ),
          SizedBox(height: 12),
        ],
      ),
      color: Colors.white,
      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
    );
  }
}

const cardExamples = [
  CardExample(),
  CardExample2(),
  CardExample3(),
  CardExample4(),
];
