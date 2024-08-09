import 'package:flutter/material.dart';
import 'package:basic_flutter_app/routes.dart';

class BasicApp extends StatefulWidget {
  const BasicApp({super.key, required this.title});

  // Lista de proyectos, cada uno con un nombre, una ruta y un ícono asociado
  final List<Map<String, dynamic>> projects = const [
    {'title': 'Proyecto 1', 'route': '/project1', 'icon': Icons.assignment}
    // Agrega más proyectos aquí
  ];
  final String title;

  @override
  _BasicAppState createState() => _BasicAppState();
}

class _BasicAppState extends State<BasicApp> {
  Icon _corazon = const Icon(
    Icons.favorite_border,
    color: Colors.white,
  );
  bool _liked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green[400],
        actions: [
          IconButton(
            onPressed: _likedChanged,
            icon: _corazon, // Aquí usamos el ícono que cambia con el estado
          )
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 80, // Ajusta la altura del DrawerHeader aquí
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green[400],
                ),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: const Center(
                  child: Text(
                    'Menú de Proyectos',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
            ...widget.projects.map((project) {
              return ListTile(
                leading: Icon(project['icon'] as IconData), // Ícono dinámico
                title: Text(project['title']!),
                onTap: () {
                  Navigator.pushNamed(context, project['route']!);
                },
              );
            }).toList(),
            // Puedes agregar más ListTile para cada proyecto adicional
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Selecciona un proyecto del menú lateral',
          textDirection: TextDirection.ltr,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        /*      onPressed: _likedChanged,
        backgroundColor: Colors.lime[600],
        child: const Icon(
          Icons.link,
          color: Colors.white,
        ),*/
        onPressed: _likedChanged,
        backgroundColor: Colors.lime[600],
        child: const Icon(Icons.link),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
        elevation: 9.0,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        notchMargin: 8.0,
/*        color: Colors.green[400],
        shape: CircularNotchedRectangle(),*/
        child: SizedBox(
          height: 50, // Ajusta la altura aquí según tus necesidades
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(Icons.camera_enhance),
                color: Colors.white,
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _likedChanged() {
    setState(() {
      if (_liked) {
        _corazon = const Icon(Icons.favorite_border, color: Colors.white);
        _liked = false;
      } else {
        _corazon = const Icon(Icons.favorite, color: Colors.white);
        _liked = true;
      }
    });
  }
}
