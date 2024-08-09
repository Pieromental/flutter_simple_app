import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainProject1 extends StatelessWidget {
  const MainProject1({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.lime[400],
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.white,
              ),
              label: 'Mi cuenta'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                color: Colors.white,
              ),
              label: 'Estadisticas'),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [Text('$index: Inicio')],
                  ),
                ),
              );
            });

          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [Text('$index: Mi cuenta')],
                  ),
                ),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [Text('$index: Inicio')],
                  ),
                ),
              );
            });

          default:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Column(
                    children: [Text('$index: Home')],
                  ),
                ),
              );
            });
        }
      },
      /* navigationBar: CupertinoNavigationBar(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cupertino Project', style: TextStyle(fontSize: 30))
            ],
          ),
        )*/
    );
  }
}
