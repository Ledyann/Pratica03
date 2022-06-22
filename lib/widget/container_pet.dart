import 'package:flutter/material.dart';

class ContainerPet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Icon(
              Icons.pets,
              size: 30,
            ),
          ),
          title: Text("Aika"),
          trailing: Icon(Icons.more_vert),
        ),
        Image.asset("assets/images/photos/aika.png"),
        Row(
          children: [
                IconButton(
                    icon: Icon(Icons.favorite_border), onPressed: () => {}),
                IconButton(
                    icon: Icon(Icons.chat_bubble_outline), onPressed: () => {}),
                IconButton(icon: Icon(Icons.send), onPressed: () => {}),
          ],
        ),
      ],
    );
  }
}
