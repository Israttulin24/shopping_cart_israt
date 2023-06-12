import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return   MaterialApp(
        darkTheme: ThemeData(primarySwatch: Colors.orange),
        color: Colors.deepPurple,
        debugShowCheckedModeBanner: false,
        home:HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My Shopping List',style: TextStyle(fontSize:25,fontWeight:FontWeight.bold),),
        actions: [
                IconButton(
                  icon:Icon(Icons.shopping_cart,size: 30,),
                  //color: Colors.white,
                  onPressed: () {ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Cart is empty')));},
                ),
        ],
      ),

      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(7)),
          ListTile(
            leading: Icon(Icons.shopping_basket_rounded,size: 40,),
            title: Text('Apples'),
          ),

          Padding(padding: EdgeInsets.all(7)),
          ListTile(
            leading: Icon(Icons.shopping_basket_rounded,size: 40,),
            title: Text('Bananas'),
          ),

          Padding(padding: EdgeInsets.all(7)),
          ListTile(
            leading: Icon(Icons.shopping_basket_rounded,size: 40,),
            title: Text('Bread'),
          ),

          Padding(padding: EdgeInsets.all(7)),
          ListTile(
            leading: Icon(Icons.shopping_basket_rounded,size: 40,),
            title: Text('Milk'),
          ),

          Padding(padding: EdgeInsets.all(7)),
          ListTile(
            leading: Icon(Icons.shopping_basket_rounded,size: 40,),
            title: Text('Eggs'),
          )
        ],
      ),

    );
  }

}