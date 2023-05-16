import 'package:flutter/material.dart';

import '../Screens/fake_page.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 10,
        top: 30,
        right: 10,
      ),
      color: Colors.indigo[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'Baby',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'nama',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Babynama is a digital platform with a highly experienced and proffessional team of doctors to cater to your baby's problems",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'SERVICES',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Preview Access',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'One-on-One Paediatric Consultation',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Baby Solids introduction',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Yoga Workshop',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'QUICK LINKS',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
            child: const Text(
              'Care Plans',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const TransitionPage(
                    text: 'Our Doctors',
                  ),
                ),
              );
            },
            child: const Text(
              'Our Doctors',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const TransitionPage(
                    text: 'Testimonials',
                  ),
                ),
              );
            },
            child: const Text(
              'Testimonials',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const TransitionPage(
                    text: 'About',
                  ),
                ),
              );
            },
            child: const Text(
              'About Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'CONTACT US',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(
                Icons.mail,
                color: Colors.orange,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'contact@gagahealth.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(
                Icons.chat,
                color: Colors.orange,
              ),
              SizedBox(
                width: 8,
              ),
              Flexible(
                child: Text(
                  'click on whatsapp button to chat with an agent',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Icon(
                Icons.location_on,
                color: Colors.orange,
              ),
              SizedBox(width: 8,),
              Flexible(
                child: Text(
                  '601,Tower 5,The Close South,Sector 50,Gurugram,HR 122018',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Copyright © 2023 GagaHealth Private Limited. All rights reserved. Terms And Conditions | Privacy Policy | Refund Policy',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
