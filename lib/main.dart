import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Navigation Drawer",
    debugShowCheckedModeBanner: false,
    home: _HomePage(),
  ));
}

class _HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
      ),
      body: Center(
        child: Text('Flutter Navigation Drawer'),
      ),
      drawer: _buildDrawer(),
      endDrawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return SizedBox(
      width: MediaQuery.of(context).size.width/1.2,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Codingtive"),
                accountEmail: Text("codingtive@gmail.com"),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
            ),
            _buildListTile(Icons.apps, "Applications", null),
            _buildListTile(Icons.notifications, "Notifications", null),
            _buildListTile(Icons.subscriptions, "Subscribe", null),
            _buildListTile(Icons.bookmark_border, "Wishlist", null),
            Divider(
              height: 2.0,
            ),
            _buildListTile(Icons.person, "Account", null),
            _buildListTile(Icons.settings, "Settings", null),
            Divider(
              height: 2.0,
            ),
            _buildListTile(null, "About Codingtive", null),
            _buildListTile(null, "Logout", Icons.input),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(
    IconData iconLeading,
    String title,
    IconData iconTrailing,
  ) {
    return ListTile(
      leading: Icon(iconLeading),
      title: Text(title),
      trailing: Icon(iconTrailing),
      onTap: () {},
    );
  }
}