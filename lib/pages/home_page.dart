//import 'package:flutter_svg/flutter_svg.dart';

import '../fragments/home.dart';
import '../fragments/company_info.dart';
import '../fragments/news.dart';
import '../fragments/career.dart';
import '../fragments/form.dart';
import '../fragments/login.dart';
import 'package:flutter/material.dart';

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem([this.title, this.icon]);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("News", Icons.book),
    new DrawerItem("Company Info", Icons.info),
    new DrawerItem("Career", Icons.people),
    new DrawerItem("Form and Guides", Icons.collections),
    new DrawerItem("Advisor Login", Icons.contacts),
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final String ivariJpg = "assets/ivari.jpg";
  final String ivariSVG = "assets/ivari.svg";

  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new Home();
      case 1:
        return new News();
      case 2:
        return new CompanyInfo();
      case 3:
        return new Career();
      case 4:
        return new Forms();
      case 5:
        return new Login();

      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(new ListTile(
        leading: new Icon(
          d.icon,
          size: 30.0,
        ),
        title: new Text(
          d.title,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
        ),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(
          widget.drawerItems[_selectedDrawerIndex].title,
          textAlign: TextAlign.center,
        ),
      ),
      drawer: new Drawer(
        elevation: 40.0,
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                Container(
                  height: 200,
                  child: Image.asset(
                    ivariJpg,
                    fit: BoxFit.scaleDown,
                  ),
                  //          child: SvgPicture.asset(ivariSVG, height: double.infinity, width: double.infinity, color: Colors.deepOrangeAccent,),
                ),
                Container(
                  color: Colors.grey[50],
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: drawerOptions,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
