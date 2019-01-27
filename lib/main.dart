import 'dart:async';
import 'package:atreacch/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:atreacch/splash_screen.dart';
import './tabs/learn.dart' as _firstTab;
import './tabs/selfAssess.dart' as _secondTab;
import './tabs/calendar.dart' as _thirdTab;
import './tabs/action.dart' as _fourthTab;
import './screens/about.dart' as _aboutPage;
import './screens/support.dart' as _supportPage;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'colors.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';

void main() => runApp(new MaterialApp(
  title: 'Atreacch',
  home: new SplashScreen(),
  debugShowCheckedModeBanner: false,
  theme: new ThemeData(
    scaffoldBackgroundColor: aBgWhite,
    primaryColor: aPurple,
    backgroundColor: aBgWhite,
  ),
  routes: <String, WidgetBuilder>{
    '/Tabs' : (BuildContext context) => new Tabs()
  },
    onGenerateRoute: (RouteSettings settings){
      switch (settings.name) {
        case '/about': return new FromRightToLeft(
          builder: (_) => new _aboutPage.About(),
          settings: settings,
        );
        case '/support': return new FromRightToLeft(
          builder: (_) => new _supportPage.Support(),
          settings: settings,
        );
      }
  },
));

class FromRightToLeft<T> extends MaterialPageRoute<T> {
  FromRightToLeft({ WidgetBuilder builder, RouteSettings settings })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    if (settings.isInitialRoute)
      return child;

    return new SlideTransition(
      child: new Container(
        decoration: new BoxDecoration(
            boxShadow: [
              new BoxShadow(
                color: cyanShadow,
                blurRadius: 25.0,
              )
            ]
        ),
        child: child,
      ),
      position: new Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      )
          .animate(
          new CurvedAnimation(
            parent: animation,
            curve: Curves.fastOutSlowIn,
          )
      ),
    );
  }
  @override Duration get transitionDuration => const Duration(milliseconds: 400);
}

class Tabs extends StatefulWidget {
  @override
  TabsState createState() => new TabsState();
}

class TabsState extends State<Tabs> {

  PageController _tabController;

  var _title_app = null;
  var _title_icon = null;
  int _tab = 0;

  @override
  void initState() {
    super.initState();
    _tabController = new PageController();
    this._title_app = TabItems[0].title;
  }

  @override
  Widget build (BuildContext context) => new Scaffold(

//    App Bar
      appBar: new AppBar(
        backgroundColor: aBgWhite,
        actions: <Widget>[
//          new Image.asset('assets/images/app_icon.png', width: 70.0, height: 60.0),
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },
          )
        ],
        title: new Text(_title_app,
          style: new TextStyle(
            fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
          ),
        ),
        elevation: 0.3,
      ),

    //Content of tabs
    body: new PageView(
      controller: _tabController,
      onPageChanged: onTabChanged,
      children: <Widget>[
        new _firstTab.Learn(),
        new _secondTab.SelfAssess(),
        new _thirdTab.Calendar(),
        new _fourthTab.Action()
      ],
    ),

    //Tabs
    bottomNavigationBar: Theme.of(context).platform == TargetPlatform.iOS ?
    new CupertinoTabBar(
      activeColor: aBlueLight,
      currentIndex: _tab,
      onTap: onTap,
      items: TabItems.map((TabItem) {
        return new BottomNavigationBarItem(
          title: new Text(TabItem.title),
          icon: new Icon(TabItem.icon),
        );
      }).toList(),
    ):
    new BottomNavigationBar(
      currentIndex: _tab,
      onTap: onTap,
      fixedColor: aBlueLight,
      type: BottomNavigationBarType.fixed,
      items: TabItems.map((TabItem) {
        return new BottomNavigationBarItem(
          title: new Text(TabItem.title),
          icon: new Icon(TabItem.icon),
        );
      }).toList(),
    ),

    //Drawer
      drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new Container(
                height: 160.0,
                color: aGreyLight,
                child: new UserAccountsDrawerHeader(
                      accountName: Text('User Name'),
                      accountEmail: Text('user.name@email.com'),
                    currentAccountPicture: CircleAvatar(
                      child: FlutterLogo(size: 40.0),
                      backgroundColor: aBgWhite,
                    ),
//                    otherAccountsPictures: <Widget>[
//                      CircleAvatar(
//                        child: Text('A'),
//                        backgroundColor: aBlueLight,
//                      ),
//                      CircleAvatar(
//                        child: Text('B'),
//                        backgroundColor: aGreen,
//                      ),
//                    ],
                ),
              ),
              new ListTile(
                  leading: new Icon(Icons.chat),
                  title: new Text('Support'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed('/support');
                  }
              ),
              new ListTile(
                  leading: new Icon(Icons.info),
                  title: new Text('About Atreacch'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).pushNamed('/about');
                  }
              ),
              new Divider(),
              new ListTile(
                  leading: new Icon(Icons.exit_to_app),
                  title: new Text('Sign Out'),
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  }
              ),
            ],
          )
      ), //

  );

  void onTap(int tab){
    _tabController.jumpToPage(tab);
  }

  void onTabChanged(int tab) {
    setState((){
      this._tab = tab;
    });

    switch (tab) {
      case 0:   this._title_app = TabItems[0].title; break;
      case 1:   this._title_app = TabItems[1].title; break;
      case 2:   this._title_app = TabItems[2].title; break;
      case 3:   this._title_app = TabItems[3].title; break;
    }
  }

  Choice _selectedChoice = choices[0];
  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }
  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }

}

class Choice {
  const Choice({this.title, this.icon});
  final String title;
  final IconData icon;
}
const List<Choice> choices = const <Choice>[
  const Choice(title: 'Car', icon: Icons.directions_car),
  const Choice(title: 'Bicycle', icon: Icons.directions_bike),
  const Choice(title: 'Boat', icon: Icons.directions_boat),
  const Choice(title: 'Bus', icon: Icons.directions_bus),
  const Choice(title: 'Train', icon: Icons.directions_railway),
  const Choice(title: 'Walk', icon: Icons.directions_walk),
];

class TabItem {
  const TabItem({ this.title, this.icon });
  final String title;
  final IconData icon;
}

const List<TabItem> TabItems = const <TabItem>[
  const TabItem(title: 'Learn', icon: FontAwesomeIcons.graduationCap,),
  const TabItem(title: 'Self-Assess', icon: FontAwesomeIcons.flask,),
  const TabItem(title: 'Calendar', icon: FontAwesomeIcons.calendarPlus,),
  const TabItem(title: 'Action', icon: FontAwesomeIcons.userMd,)
];