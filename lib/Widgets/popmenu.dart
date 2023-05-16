import 'package:assignment4/Screens/fake_page.dart';
import 'package:flutter/material.dart';

class PopMenu extends StatelessWidget {
  const PopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: const Icon(
        Icons.menu,
        color: Colors.grey,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Row(
            children: const [
              // Icon(Icons.star),
              // SizedBox(
              //   width: 10,
              // ),
              Text(
                "Home",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            children: const [
              Text(
                "Care Plans",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Row(
            children: const [
              Text(
                "Testimonials",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        PopupMenuItem(
          value: 4,
          child: Row(
            children: const [
              Text(
                "About",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        PopupMenuItem(
          value: 5,
          child: Row(
            children: const [
              Text(
                "Our Doctors",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        PopupMenuItem(
          value: 6,
          child: Row(
            children: const [
              Text(
                "Pages",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
      ],
      offset: const Offset(0, 50),
      color: Colors.white,
      surfaceTintColor: Colors.amber,
      elevation: 2,
      onSelected: (value) {
        if (value == 1) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const TransitionPage(
                text: 'Home',
              ),
            ),
          );
        } else if (value == 2) {
          Navigator.of(context).pushReplacementNamed('/');
        } else if (value == 3) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const TransitionPage(
                text: 'Testimonials',
              ),
            ),
          );
        } else if (value == 4) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const TransitionPage(
                text: 'About',
              ),
            ),
          );
        } else if (value == 5) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const TransitionPage(
                text: 'Our Doctors',
              ),
            ),
          );
        } else if (value == 6) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const TransitionPage(
                text: 'Pages',
              ),
            ),
          );
        }
      },
    );
    ;
  }
}
