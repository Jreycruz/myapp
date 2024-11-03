import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
              SizedBox(height: 16),
              Text(
                'Nombre de Usuario',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'correo@ejemplo.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción para editar perfil
                },
                child: Text('Editar Perfil'),
              ),
              SizedBox(height: 20),
              Text(
                'Inventories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 4,
                color: Colors.blue[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '---------------------',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
