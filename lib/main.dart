import 'package:flutter/material.dart';

void main() {
  runApp(BasketBallPointsCounter());
}

class BasketBallPointsCounter extends StatefulWidget {
  @override
  State<BasketBallPointsCounter> createState() => _BasketBallPointsCounterState();
}

class _BasketBallPointsCounterState extends State<BasketBallPointsCounter> {
  //const BasketBallPointsCounter({super.key});
  int teamApoints =0 ;

  int teamBpoints =0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.orange, title: Text("points counter" , style: TextStyle(color: Colors.white , fontSize: 25 , fontWeight: FontWeight.bold),),),

        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Team A", style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w400),),
                        SizedBox(height: 40,),
                        Text("$teamApoints" , style: TextStyle(fontSize: 130 , fontWeight: FontWeight.w400),),
                        SizedBox(height: 30,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange ,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)) ),
                            onPressed: () {
                              setState(() {
                                teamApoints++ ;
                              });
                            },
                            child: Text("Add 1 point" ,style: TextStyle(color: Colors.black),)),
                
                
                        SizedBox(height: 20,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange ,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)) ),
                
                            onPressed: (){
                              setState(() {
                                teamApoints+=2;
                              });
                            }, child: Text("Add 2 points" ,style: TextStyle(color: Colors.black),)),
                
                
                        SizedBox(height: 20,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange ,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)) ),
                            onPressed: (){
                             setState(() {
                               teamApoints+=3;
                             });
                            }, child: Text("Add 3 points" ,style: TextStyle(color: Colors.black),))
                      ],
                    ),

                       Container(
                         height: 500,
                         child: VerticalDivider(
                            indent: 50,
                            endIndent: 50,
                            color: Colors.grey,
                            thickness: 1,
                          ),
                       ),
                   
                    
                
                    Column(
                      children: [
                        Text("Team B", style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w400),),
                        SizedBox(height: 40,),
                        Text("$teamBpoints" , style: TextStyle(fontSize: 130 , fontWeight: FontWeight.w400),),
                        SizedBox(height: 30,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange ,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)) ),
                
                            onPressed: (){
                              setState(() {
                                teamBpoints++ ;
                              });
                            }, child: Text("Add 1 point" ,style: TextStyle(color: Colors.black),)),
                
                
                        SizedBox(height: 20,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange ,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)) ),
                
                            onPressed: (){
                              setState(() {
                                teamBpoints+=2 ;
                              });
                            }, child: Text("Add 2 points" ,style: TextStyle(color: Colors.black),)),
                
                
                        SizedBox(height: 20,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.orange ,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)) ),
                            onPressed: (){
                              setState(() {
                                teamBpoints+=3 ;
                              });
                            }, child: Text("Add 3 points" ,style: TextStyle(color: Colors.black),))
                      ],
                    ),
                
                  ],
                ),

              SizedBox(height: 60,),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange ,
                    minimumSize: Size(150, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))
                  ),
                  onPressed: () {
                    setState(() {
                      teamApoints = 0 ;
                      teamBpoints = 0 ;
                    });
                  },
                  child: Text("Rsest" , style: TextStyle(color: Colors.black , fontSize: 25),))

            ],
          ),
        ),

      ),
    );
  }
}