import 'package:flutter/material.dart';
import 'chat_item.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final data = [
    {
      "nama": "Flora Fentris Sarumaha",
      "pesan": "sudah",
      "bulan": "Januari",
      "avatar": "images/avatar.jpeg"
    },
    {
      "nama": "Viona",
      "pesan": "kapan acaranya?",
      "bulan": "Februari",
      "avatar": "images/avatar1.jpeg"
    },
    {
      "nama": "Hewit",
      "pesan": "Kelas apa?",
      "bulan": "Maret",
      "avatar": "images/avatar2.jpeg"
    },
    {
      "nama": "Ruby",
      "pesan": "done ya",
      "bulan": "April",
      "avatar": "images/avatar3.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Chat item"),
          backgroundColor: Colors.blue,
        ),
         body: ListView.separated(
            separatorBuilder: (context, index) {
              return Container(                               
              ); // Container
            },
            itemCount: data.length,
            itemBuilder: (context, index) {
            return ChatItem(
              nama: data[index]['nama']!,
              pesan: data[index]['pesan']!,
              bulan: data[index]['bulan']!,
              avatar: data[index]['avatar']!,
            );
          },
        ),
      ),
    );
  }
}