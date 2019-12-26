
import 'package:flutter/material.dart';



Widget gridHome([int index,String image, String title, String subtitle,context]) {
  
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(

    child:FlatButton(
      onPressed: (){
              Navigator.pushNamed(context, '/details');

      },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
  ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
      child: Container(
      margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 150.0,
        child: Image.asset(
          "images/$image",
          fit: BoxFit.cover,
        ),
    ),
  ),
  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '$title',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          ),
          Text(
            "$subtitle",
            style: TextStyle(color: Colors.green[800]),
          )
        ],
      ),
  )
      ],
      ),
    ),
  ),
  );
}
