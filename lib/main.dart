import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
       /* appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Profile")
        ),*/

        body:Center(
          child: Stack(
            children: [

              Container(
                margin: EdgeInsets.only(bottom: 400),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                    image:AssetImage("assets/images/eric.jpg")
                  )
                ),
              ),

              Container(
                color:Colors.blueAccent.withOpacity(0.9),
                child:Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:180),
                      height:200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:DecorationImage(
                          image: AssetImage("assets/images/eric.jpg"),
                        )
                      ),
                    ),

                    Container(
                      margin:EdgeInsets.only(top:15),
                      child: Text("Eric Schmidt", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color:Colors.white,))
                    ),

                    Container(
                        margin:EdgeInsets.only(top:20),
                        child: Text("Snowboarder, Superhero and writer. \n Sometimes I work at Google as Executive Chairman.  ", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color:Colors.white,), textAlign: TextAlign.center,)
                    ),

                    Divider(
                        color: Colors.white,
                        thickness: 0.1,
                        indent: 10,
                        endIndent: 10,
                      ),


                    Container(
                      margin:EdgeInsets.only(left:30, right:15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                          margin: EdgeInsets.only(right:15),
                          child: Text("343 \n POSTS", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color:Colors.white,), textAlign: TextAlign.center,)),
                          Text("673826 \n FOLLOWERS", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color:Colors.white,), textAlign: TextAlign.center,),
                          Text("275 \n FOLLOWING", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color:Colors.white,), textAlign: TextAlign.center,),
                        ],
                      )
                    ),

                    Divider(
                      color: Colors.white,
                      thickness: 0.1,
                      indent: 10,
                      endIndent: 10,
                    ),

                    Container(
                      margin: EdgeInsets.all(5),
                      height:30,
                      width:300,
                      decoration:BoxDecoration(
                        color:Colors.white
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin:EdgeInsets.only(right:10),
                              child: Icon(Icons.add_box_outlined)),
                          Text("FOLLOW",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 14), textAlign: TextAlign.center,)
                        ],
                      )
                    )
                  ],
                )
              ),
            ],
          ),
        )
      )
    );
  }
}
