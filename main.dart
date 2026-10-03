import 'package:flutter/material.dart';
void main(){runApp(UniChatBlue());}
class UniChatBlue extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData(primaryColor:Color(0xFF1976D2)),
      home:HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState()=>_HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  int _i=0;
  final _pages=[
    Center(child:Text("💬 Chats\nBlue Edition v51",style:TextStyle(fontSize:24),textAlign:TextAlign.center)),
    Center(child:Text("📢 Channels")),
    Center(child:Text("🤖 AI Assistant")),
    Center(child:Text("🎓 Study Tools")),
    Center(child:Text("👤 Profile\nnatufemerit31-cyber",textAlign:TextAlign.center)),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text("UniChat Blue v51"),backgroundColor:Color(0xFF1976D2),foregroundColor:Colors.white),
      body:_pages[_i],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex:_i,
        onTap:(v)=>setState(()=>_i=v),
        type:BottomNavigationBarType.fixed,
        selectedItemColor:Color(0xFF1976D2),
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.chat),label:"Chats"),
          BottomNavigationBarItem(icon:Icon(Icons.campaign),label:"Channels"),
          BottomNavigationBarItem(icon:Icon(Icons.smart_toy),label:"AI"),
          BottomNavigationBarItem(icon:Icon(Icons.school),label:"Study"),
          BottomNavigationBarItem(icon:Icon(Icons.person),label:"Profile"),
        ],
      ),
    );
  }
}
