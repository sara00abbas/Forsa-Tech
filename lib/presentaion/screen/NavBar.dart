import 'package:devloper_app/presentaion/screen/widget/ListTitle.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("data"),
            accountEmail: Text("data"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2023/09/16/21/31/girl-8257551_1280.jpg",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("assets/images/logoForsa.PNG"))),
          ),
          MyListTitle(leading: "sedra", title: "sedra")
        ],
      ),
    );
  }
}
