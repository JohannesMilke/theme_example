import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.grey),
            ],
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home_rounded),
              Icon(Icons.search),
              Icon(Icons.camera_alt),
              Icon(Icons.notifications),
              Icon(Icons.person)
            ],
          ),
        ),
      );
}
