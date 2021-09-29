// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:special_counter/Providers/contador.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador v2.0"),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.70,
            margin: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: counterModel.color,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                "${counterModel.getCount()}",
                style: TextStyle(fontSize: 72),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                child: Text(
                  "BLACK",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.black87,
                onPressed: () {
                  counterModel.cambiarColor(Colors.black87);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("Cambiando a color negro..."),
                        duration: Duration(milliseconds: 500),
                        backgroundColor: counterModel.color),
                  );
                },
              ),
              MaterialButton(
                child: Text(
                  "RED",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.red,
                onPressed: () {
                  counterModel.cambiarColor(Colors.red);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("Cambiando a color rojo..."),
                        duration: Duration(milliseconds: 500),
                        backgroundColor: counterModel.color),
                  );
                },
              ),
              MaterialButton(
                child: Text(
                  "BLUE",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.blue,
                onPressed: () {
                  counterModel.cambiarColor(Colors.blue);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Cambiando a color azul..."),
                      duration: Duration(milliseconds: 500),
                      backgroundColor: counterModel.color,
                    ),
                  );
                },
              ),
              MaterialButton(
                child: Text(
                  "GREEN",
                  style: TextStyle(color: Colors.grey[200]),
                ),
                color: Colors.green,
                onPressed: () {
                  counterModel.cambiarColor(Colors.green);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text("Cambiando a color verde..."),
                        duration: Duration(milliseconds: 500),
                        backgroundColor: counterModel.color),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Sumar 1 cuenta",
                  icon: Icon(Icons.add),
                  color: Colors.grey[200],
                  onPressed: () {
                    counterModel.incrementCounter();
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Restar 1 cuenta",
                  icon: Icon(Icons.remove),
                  color: Colors.grey[200],
                  onPressed: () {
                    counterModel.decrementCounter();
                  },
                ),
              ),
              CircleAvatar(
                maxRadius: 30,
                minRadius: 20,
                child: IconButton(
                  tooltip: "Reiniciar cuenta",
                  icon: Icon(Icons.restart_alt),
                  color: Colors.grey[200],
                  onPressed: () {
                    counterModel.resetCount();
                    counterModel.cambiarColor(Colors.grey.shade300);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
