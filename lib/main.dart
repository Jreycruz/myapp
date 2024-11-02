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

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String username = 'Nombre de Usuario';
  String email = 'correo@ejemplo.com';
  bool isEditing = false;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    usernameController.text = username;
    emailController.text = email;
  }

  void toggleEditing() {
    setState(() {
      isEditing = !isEditing;
      if (!isEditing) {
        username = usernameController.text;
        email = emailController.text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
              SizedBox(height: 16),
              isEditing
                  ? TextField(
                      controller: usernameController,
                      decoration: InputDecoration(labelText: 'Nombre de Usuario'),
                    )
                  : Text(
                      username,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
              SizedBox(height: 8),
              isEditing
                  ? TextField(
                      controller: emailController,
                      decoration: InputDecoration(labelText: 'Correo Electrónico'),
                    )
                  : Text(
                      email,
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: toggleEditing,
                child: Text(isEditing ? 'Guardar' : 'Editar Perfil'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
