import 'package:flutter/material.dart';

class MyEditProfile extends StatelessWidget {
  const MyEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โปรไฟล์ผู้ใช้'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://www.kasandbox.org/programming-images/avatars/leaf-blue.png',
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ชื่อผู้ใช้: John Doe',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'อีเมล: johndoe@example.com',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.blue),
                title: Text("การตั้งค่า"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.lock, color: Colors.blue),
                title: Text("เปลี่ยนรหัสผ่าน"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip, color: Colors.blue),
                title: Text("ความเป็นส่วนตัว"),
                onTap: () {},
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("แก้ไขโปรไฟล์")));
                },
                child: Text('แก้ไขโปรไฟล์'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("ออกจากระบบ")));
                },
                child: Text('ออกจากระบบ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
