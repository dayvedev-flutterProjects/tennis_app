
import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nav/home_page.dart';

class HomeNavPage extends StatefulWidget {
  const HomeNavPage({Key? key}) : super(key: key);

  @override
  _HomeNavPageState createState() => _HomeNavPageState();
}

class _HomeNavPageState extends State<HomeNavPage> {
  int _cIndex = 0;
  String _title = "Home";


  @override
  void initState() {
    super.initState();
    //fireGetAppDropdownsRequest(); //todo move to App wide access like main.dart

  }


  @override
  Widget build(BuildContext context) {
    // fireGetRegionsRequest();
    // fireGetPropertyTypesRequest();
    return Scaffold(
      backgroundColor: Colors.white,

      //todo test on android status bar is still as scaffold backgroundColor
      // appBar: _cIndex == 0 || _cIndex == 2  ? null:  AppBar(
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      //   // backgroundColor: Colors.grey[200],
      //   title: Text(_title),
      //
      // ),

      body: SafeArea(
        child: PageTransitionSwitcher(
          transitionBuilder: (
              Widget child,
              Animation<double> primaryAnimation,
              Animation<double> secondaryAnimation,
              ) {
            return FadeThroughTransition(
              child: child,
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
            );
          },
          child: IndexedStack(
            index: _cIndex,
            key: ValueKey<int>(_cIndex),
            children: [
              const HomePage(),
              // PaymentsPage(),
              // const RequestBinPage(),
              // HelpPage(),
              // MenuPage(),

            ],

          ),
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _cIndex,
        type: BottomNavigationBarType.fixed ,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        // unselectedItemColor: Colors.red,
        showUnselectedLabels: true,
        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.sports_baseball_outlined),
            label: '',
            //label: 'Home',
            backgroundColor: Colors.grey,


          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today_outlined),
            label: '',
            //label: 'Fixtures',

            // title: Text('Add Box'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: '',
            //label: 'Stats',
            // title: Text('Withdraw')
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            //label: 'Profile',
            label: '',
            // title: Text('Withdraw')
          ),

          // BottomNavigationBarItem(
          //   icon: Icon(Icons.menu),
          //   label: 'More',
          //   // title: Text('More')
          // )
        ],
        onTap: (index){
          _setUpCurrentTab(index);
        },
      ),

    );
  }

  void _setUpCurrentTab(index) {
    setState(() {
      _cIndex = index;
      //setTitle(_cIndex);
    });
  }

  void setTitle(int index) {
    switch(index) {
      case 0: { _title = 'Home'; }
      break;
      case 1: { _title = 'Payments'; }
      break;
      case 2: { _title = 'Request'; }
      break;
      case 3: { _title = 'Help'; }
      break;
      case 4: { _title = 'More'; }
      break;
    }
  }

}