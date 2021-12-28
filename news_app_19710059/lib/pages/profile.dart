import 'package:flutter/material.dart';

void main() => runApp(CardProfile());

class CardProfile extends StatelessWidget {
  const CardProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('asset/img/satria.jpg'),
            ),
            Text('Satria Alnadi Ramadhan', 
            style: TextStyle(
              fontFamily: 'Spider Home',
              fontSize: 40.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
            ),
          Text('19710059', style: TextStyle(
            fontFamily: 'Spider Home',
            color: Colors.teal.shade100,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(
            height: 50.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0, 
              horizontal: 25.0,
            ),
             child: ListTile(
               leading: Icon(
                 Icons.house,
                 color: Colors.teal,
               ),
             title: Text('Banjarbaru, Komplek Beringin Gang kelengkeng',
             style: TextStyle(
               fontSize: 20.0,
               color: Colors.teal.shade900,
               fontFamily: 'Spider Home'),
             ),
             ),
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0, 
              horizontal: 25.0,
            ),
             child: ListTile(
               leading: Icon(
                 Icons.home,
                 color: Colors.teal,
               ),
             title: Text('Banjarbaru, 03-Desember-1999',
             style: TextStyle(
               fontSize: 20.0,
               color: Colors.teal.shade900,
               fontFamily: 'Spider Home'),
             ),
             ),
          ),
           Card(
            margin: EdgeInsets.symmetric(
              vertical: 10.0, 
              horizontal: 25.0,
            ),
             child: ListTile(
               leading: Icon(
                 Icons.people_alt,
                 color: Colors.teal,
               ),
             title: Text('SI 5A Reguler Banjarbaru',
             style: TextStyle(
               fontSize: 20.0,
               color: Colors.teal.shade900,
               fontFamily: 'Spider Home'),
             ),
             ),
          ),
          ],
        )),
      ),
    );
  }
}