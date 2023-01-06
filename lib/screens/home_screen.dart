import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: PreferredSize(
              preferredSize: Size.fromHeight(90.0),
          child: HomeAppBar(),

        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: SingleChildScrollView(
              child: Column(children:[
                Row(
                  children: [
                    Expanded(
                        child: Container(
                          height: 200,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index){print(index);
                              return InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 160,
                                  padding: EdgeInsets.all(20),
                                  margin: EdgeInsets.only(left: 15),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      // city1.jpg
                                    image: Image.network("https://i.pinimg.com/564x/6f/20/38/6f20383c8ab632706dcc097d642b091a.jpg"),
                                    fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            }
                          ),
                    )),
                  ],
                ),
              ],),
            ),
          )
        )
    );
  }
}

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
          ),
          Row(children: [
            Icon(
              Icons.location_on,
              color: Colors.red,
            ),
            Text(
              "Isparta,TR",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
          ),
          InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:  [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
    ),
                  ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.search,
                size:28,
              ),
            ),
          )
        ],
      ),
    );

  }
}