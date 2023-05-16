import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final String text1;
  final String text2;
  CustomExpansionTile({
    required this.text1,
    required this.text2,
  });
  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Material(
          elevation: _isExpanded?0:20,
          shadowColor: Colors.blue,
          
          child: ListTile(
            title:
                Text(
                  widget.text1,
                  style: const TextStyle(fontSize: 16),
                ),
                trailing:IconButton(
                  icon: Icon(
                    _isExpanded ? Icons.minimize : Icons.add,
                  ),
                  onPressed: _toggleExpanded,
                ),
              
            
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width -20,
          height: _isExpanded?50:0,
          child:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                widget.text2,
                style: const TextStyle(fontSize: 14),
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              ),
          ),
        ),
        if(_isExpanded)
         const Divider(color: Colors.grey,),
         const SizedBox(height:10,),
      ],
    );
  }
}
