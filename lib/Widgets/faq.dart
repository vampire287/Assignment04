import 'package:assignment4/utility/custom_expansion_tile.dart';
import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        shrinkWrap:true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          CustomExpansionTile(text1:'What should I consider before choosing a plan?',  text2:'You should consider the age of your baby and whether you are a housewife or not.' ),
          const SizedBox(height:10,),
          CustomExpansionTile(text1: 'Does your doctors available all the time?', text2: 'Yes, our doctors are always there for you.'),
          const SizedBox(height:10,),
          CustomExpansionTile(text1: 'which plan is better according to you?', text2: 'It totally depends on you and your needs from us.'),
          const SizedBox(height:10,),
          CustomExpansionTile(text1: 'Is the most expensive worth it?', text2: 'Its one of the best and we will make sure to make it worth millions.'),
        ],
      ),
    );
  }
}
