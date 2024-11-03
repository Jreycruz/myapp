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
                'Luis Cruz',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'kingluis123@gmail.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Editar Perfil'),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Inventories',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.book, size: 24),
                              SizedBox(width: 8),
                              Text('My Stories', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, size: 16),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.help, size: 24),
                              SizedBox(width: 8),
                              Text('Support', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, size: 16),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Additional Options',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.notifications, size: 24),
                              SizedBox(width: 8),
                              Text('Push notifications', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          Switch(value: true, onChanged: (value) {}),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.face, size: 24),
                              SizedBox(width: 8),
                              Text('Face ID', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          Switch(value: true, onChanged: (value) {}),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.lock, size: 24),
                              SizedBox(width: 8),
                              Text('PIN Code', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios, size: 16),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.logout, size: 24, color: Colors.red),
                              SizedBox(width: 8),
                              Text('Logout', style: TextStyle(fontSize: 16, color: Colors.red)),
                            ],
                          ),
                        ],
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
