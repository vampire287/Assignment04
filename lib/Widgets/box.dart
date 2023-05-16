import 'package:assignment4/Widgets/show_dialog.dart';
import 'package:flutter/material.dart';

class Box extends StatefulWidget {
  final String titleText;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  final String price;
  final bool ismonth;
  Box({
    required this.titleText,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,
    required this.price,
    required this.ismonth,
  });

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  bool isknowMore = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      shadowColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        margin: const EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: [
            const SizedBox(height: 5),
            Text(
              widget.titleText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    widget.text1,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ),
              ],
            ),
            if (isknowMore)
              Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      widget.text2,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            if (isknowMore)
              Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      widget.text3,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            if (isknowMore)
              Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      widget.text4,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            if (isknowMore && widget.text5.isNotEmpty)
              Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      widget.text5,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            if (isknowMore && widget.text6.isNotEmpty)
              Row(
                children: [
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      widget.text6,
                      style: const TextStyle(
                        fontSize: 15,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Rs.${widget.price}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.ismonth ? 'Per 3 Month' : 'Per Month',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                if (widget.ismonth)
                  const Text(
                    '10 days Refund Policy',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isknowMore) {
                        isknowMore = false;
                      } else {
                        isknowMore = true;
                      }
                    });
                  },
                  child: Container(
                    width: 80,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 191, 196, 194),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        isknowMore ? 'Know less' : 'Know more',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                
                DialogButton(
                  price: widget.price,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
