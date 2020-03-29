import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TermOfUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0E3469),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), 
          color: Colors.white,
          onPressed: () => Navigator.pop(context,false)
          ),
      ),
      body: Container(
        color:Color(0xFF0E3469),
        padding:EdgeInsets.only(
            top:60,
            left:15,
            right:15
        ),
        
      ),
    );
  }
}