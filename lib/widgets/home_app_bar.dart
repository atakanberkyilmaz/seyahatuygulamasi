import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.sort_rounded,
                size: 28,
              ),
            ),
          )
        ],
      ),
    );

  }
}