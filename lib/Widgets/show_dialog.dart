import 'package:assignment4/Provider/dark_them_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';

class DialogButton extends StatefulWidget {
  final String price;
  DialogButton({
    required this.price,
  });

  @override
  State<DialogButton> createState() => _DialogButtonState();
}

class _DialogButtonState extends State<DialogButton> {
  final TextEditingController numberController = TextEditingController();

  final TextEditingController couponController = TextEditingController();

  final List coupons = [
    'Anurag@28',
    'Babyname2340',
    'Babyname100paytm',
    'Paytm300'
  ];



  ValueNotifier<bool> isCorrect = ValueNotifier<bool>(false);

  @override
  void dispose() {
    super.dispose();
    numberController.dispose();
    couponController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isDarkTheme = Provider.of<DarkThemeProvider>(context).darkTheme;
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                backgroundColor: isDarkTheme ? Colors.black : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 5,
                  ),
                  child: Container(
                    height: 420,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            icon: const Icon(
                              Icons.close,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Pay ',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Rs.${widget.price}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              ' and get your',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'baby a healthy start',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        IntlPhoneField(
                          controller: numberController,
                          initialCountryCode: 'IN',
                          decoration: const InputDecoration(
                            labelText: 'Phone Number',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Enter your Coupon code',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: TextField(
                                controller: couponController,
                                style: TextStyle(
                                    color: isDarkTheme
                                        ? Colors.white
                                        : Colors.black),
                                decoration: InputDecoration(
                                  hintText: isCorrect.value?'invalid':'',
                                  fillColor: Colors.grey.shade100,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        width: 2, color: Colors.blue),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            ValueListenableBuilder<bool>(
                              valueListenable: isCorrect,
                              builder: (context,value,_){
                                return ElevatedButton(
                              onPressed: () {
                                if (coupons.contains(couponController.text)) {
                                  setState(() {
                                    isCorrect.value=true;
                                  });
                                } else{
                                  isCorrect.value =false;
                                }
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                              ),
                              child: Text(
                                value ? 'Applied' : 'COUPON',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (numberController.text.length == 10) {
                                Navigator.of(context).pop();
                                setState(() {
                                  numberController.text='';
                                  couponController.text='';
                                  isCorrect.value=false;
                                });
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Center(
                                        child: Text(
                                          'Thank You',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      content: SizedBox(),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              }
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            child: const Align(
                              child: Text(
                                'PAY NOW',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Stuck?',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () async {
                            const phoneNumber =
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
                          child: const Text(
                            'Chat with an agent Now',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
      child: Container(
        width: 80,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            'Get Started',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
