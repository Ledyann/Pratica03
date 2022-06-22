import 'package:atv3/widget/container_pet.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            IconButton(
                padding: const EdgeInsets.only(left: 80),
                icon: Icon(Icons.pets_outlined, color: Colors.black),
                onPressed: null),
            Text(
              "Cute pet",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: _buildContainer(context),
    );
  }

  _buildContainer(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(color: Colors.grey),
          ContainerPet(),
          ContainerPet(),
          ContainerPet(),
          ContainerPet(),
          ContainerPet(),
        ],
      ),
    );
  }
}
