import 'package:flutter/material.dart';
import 'package:navigations_and_drawer/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'screen_one';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Navigation Drawer'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const ScreenTwo()));
                Navigator.pushNamed(context, ScreenTwo.id);
              },
              child: const Text('Screen One'),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            //DrawerHeader(child: Text('I am a Flutter Developer')),
            const UserAccountsDrawerHeader(
              accountName: Text('Umer Iftikhar'),
              accountEmail: Text('umeriftikhar2526@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
              decoration: BoxDecoration(color: Colors.teal),
            ),
            ListTile(
              leading: Icon(Icons.home_filled),
              title: const Text("Home"),
              onTap: (){

              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text("Calendar"),
              onTap: (){
                  Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),

          ],
        ),
      ),
    );
  }
}
