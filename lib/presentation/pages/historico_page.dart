import 'package:flutter/material.dart';


class HistoriPage extends StatelessWidget {
  const HistoriPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        leading: Icon(Icons.west_sharp),
        title: Text("Historico",
        style: TextStyle(
          fontSize: 30,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body:Column(
        children: [
          Container(
            height: 40,
            child: ListView( scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  child: ElevatedButton(onPressed: (() {
                  }), child: Text('Todos'),),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  child: ElevatedButton(onPressed: (() {
                  }), child: Text('Disponiveis')),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: 150,
                  child: ElevatedButton(onPressed: (() {
                  }), child: Text('Indisponíveis')),
                ),
            ],
              ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 239, 244, 239),
                    child: ListTile(
                    title: Text("Lab Infor 01",
                    style:  TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {
                      print('boa tarde');
                    },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 239, 244, 239),
                    child: ListTile(
                    title: Text("Lab Infor 01",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {
                      print('boa tarde');
                    },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 239, 244, 239),
                    child: ListTile(
                    title: Text("Lab Infor 01",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {
                      print('boa tarde');
                    },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 239, 244, 239),
                    child: ListTile(
                    title: Text("Lab Infor 01",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {
                      print('boa tarde');
                    },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 239, 244, 239),
                    child: ListTile(
                    title: Text("Lab Infor 01",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {
                      print('boa tarde');
                    },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 239, 244, 239),
                    child: ListTile(
                    title: Text("Lab Infor 01",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {
                      print('boa tarde');
                    },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 239, 244, 239),
                    child: ListTile(
                    title: Text("Lab Infor 01",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {
                      print('boa tarde');
                    },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 239, 244, 239),
                    child: ListTile(
                    title: Text("Lab Infor 01",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {
                      print('boa tarde');
                    },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 239, 244, 239),
                    child: ListTile(
                    title: Text("Lab Infor 01",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {
                      print('boa tarde');
                    },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ); 
  }
}