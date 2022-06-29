import 'package:flutter/material.dart';
import 'package:idcard/model/card_model.dart';  
  
void main() => runApp(MyApp());  
  
/// This Widget is the main application widget.  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(title: Text('Flutter Card Example')),  
        backgroundColor: Colors.white,  
        body: MyCardWidget(),  
      ),  
    );  
  }  
}  
  
/// This is the stateless widget that the main application instantiates.  
class MyCardWidget extends StatelessWidget {  
  MyCardWidget({Key? key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Center(  
      widthFactor: 500,
      heightFactor: 300,
      
      child: ListView.builder(
        
        itemCount: datalist.length,
        itemBuilder:(context, index) =>  Container(
          height: 300,
          width: 500,
          child: Card( 
                  shape: RoundedRectangleBorder(  
                    borderRadius: BorderRadius.circular(15.0),  
                  ),  
                  color: Colors.cyan,  
                  elevation: 10,  
                  child: Column(  
                    mainAxisSize: MainAxisSize.min,  
                    children: <Widget>[  
                      ListTile(                
                        leading: CircleAvatar(                 
                          child: Container(  
                            decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                              image: NetworkImage(datalist[index].images), fit: BoxFit.cover,
                              
                                )
                             ),
                          ),
                        ),  
                        title:  Text(  
                          datalist[index].name,  
                          style: TextStyle(fontSize: 20.0),),
                          subtitle: Column(
                            children: [
                              Text(  
                              'email:-\numangshriwas17@gmail.com', 
                              style: TextStyle(fontSize: 16.0)  
                               ),
                               SizedBox(
                                height: 20,
                               ),
                               Text(  
                              'contact:-\n9179577244', 
                              style: TextStyle(fontSize: 16.0)  
                               ),
                               
                               
                            ],
                          ),
                      ), 
                    ],  
                  ),  
                ),
        ),)
    );  
  }  
} 