import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(primarySwatch: Colors.pink),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("TabBar Venta de electrodomésticos"),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.mode),
            ),
            Tab(
              icon: Icon(Icons.payment_sharp),
            ),
            Tab(
              icon: Icon(Icons.shop),
            ),
            Tab(
              icon: Icon(Icons.accessibility_new_outlined),
            ),
            Tab(
              icon: Icon(Icons.help),
            ),
          ] //TextoIcono
              ),
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Icon(Icons.mode, size: 350, color: Colors.amber),
          ),
          Center(
            child: Icon(Icons.payment_sharp, size: 350, color: Colors.red),
          ),
          Center(
            child: Icon(Icons.shop, size: 350, color: Colors.blue),
          ),
          Center(
            child: Icon(Icons.accessibility, size: 350, color: Colors.green),
          ),
          Center(
            child: Icon(Icons.help, size: 350, color: Colors.pink),
          ),
        ]),
      ),
    );
  } //widgets
}
