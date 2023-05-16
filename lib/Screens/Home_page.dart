import 'package:assignment4/Widgets/Bottom_page.dart';
import 'package:assignment4/Widgets/faq.dart';
import 'package:flutter/material.dart';
import '../Provider/dark_them_provider.dart';
import 'package:provider/provider.dart';
import '../Widgets/button.dart';
import '../Widgets/box.dart';
import '../Widgets/popmenu.dart';
import '../Widgets/video.response.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool monthState = true;

  @override
  Widget build(BuildContext context) {
    const appBarHeight = kToolbarHeight;
    final width = MediaQuery.of(context).size.width;
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            text: 'Baby',
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'nama',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        centerTitle: false,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('off'),
              Switch.adaptive(
                value: themeChange.darkTheme,
                onChanged: (bool value) {
                  themeChange.darkTheme = value;
                },
                activeColor: Colors.grey,
                activeTrackColor: Colors.white,
                inactiveThumbColor: Colors.black,
                inactiveTrackColor: Colors.grey,
              ),
              const Text('on')
            ],
          ),
          const SizedBox(width: 4),
          const PopMenu(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 25.0,
                top: 10,
                bottom: 10,
              ),
              child: Text(
                'Our Care Plans',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //buttons
            Row(
              children: [
                const SizedBox(
                  width: 110,
                ),
                Button1(
                  text: '1 Month',
                  color: monthState ? Colors.white : Colors.blue,
                  textColor: monthState ? Colors.blue : Colors.white,
                  func: () {
                    setState(() {
                      monthState = false;
                    });
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                Button1(
                  text: '3 Months',
                  color: monthState ? Colors.blue : Colors.white,
                  textColor: monthState ? Colors.white : Colors.blue,
                  func: () {
                    setState(() {
                      monthState = true;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 15),
            Box(
              titleText: 'Basic Care',
              text1: 'Pediatric care in 15 minutes',
              text2: 'Instant chat with pediatricians on WhatsApp',
              text3: 'Free pediatrician consultations (day)',
              text4: 'Live Yoga Sessions',
              text5: '',
              text6: '',
              price: monthState ? '2499' : '999',
              ismonth: monthState,
            ),

            const SizedBox(
              height: 15,
            ),
            Box(
              titleText: 'Prime Care',
              text1:
                  'Pediatric care in 15 minutes,lactation,nutrition,monthly milestones,emergency support',
              text2: 'Everything in Basic Care',
              text3: '24x7 free pediatrician consultations',
              text4: 'Monthly growth and milestones tracking by pediatrician',
              text5: 'Lactation and Weaning Support',
              text6: '',
              price: monthState ? '4999' : '1999',
              ismonth: monthState,
            ),
            const SizedBox(
              height: 15,
            ),
            Box(
              titleText: 'Holistic Care',
              text1:
                  'Dedicated pediatrician for your baby, personal care plan, Best possible baby care',
              text2: 'Everything included in the PRIME Plan',
              text3: 'Dedicated pediatrician just for your baby',
              text4: 'Personalized care plan for your baby and you',
              text5: 'All Consultations and workshops free*',
              text6: 'We keep adding new services to provide more value to you',
              price: monthState ? '9999' : '3998',
              ismonth: monthState,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Hear from Babynama',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Parents',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Flexible(
                  child: Text(
                    'We are proud to have helped thousands of Parents',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const VideoResponse(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'FAQs for Our Care Plans',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FAQ(),
            const SizedBox(
              height: 20,
            ),
            const BottomPage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () async {
          const  phoneNumber =
              '+917303786959'; // Replace with the agent's phone number or WhatsApp number

          const url = 'https://wa.me/$phoneNumber';
          // ignore: deprecated_member_use
          if (await canLaunch(url)) {
            // ignore: deprecated_member_use
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: const Icon(
          MaterialCommunityIcons.whatsapp,
        ),
      ),
    );
  }
}
