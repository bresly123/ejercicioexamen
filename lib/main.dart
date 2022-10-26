import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 41, 5, 245),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Color.fromARGB(255, 196, 194, 194),
              backgroundImage: AssetImage("assets/images/nike.jpg"),
            ),
            Divider(),
            Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                title: Text("EMAIL ADDRESS"),
                subtitle: Text("Username@gmail.com"),
                leading: Icon(Icons.email, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                title: Text("PASSWORD"),
                subtitle: Text("..............."),
                leading:
                    Icon(Icons.lock, color: Color.fromARGB(255, 17, 17, 17)),
                trailing: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
            Container(
                height: 90,
                padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {},
                  //vamos ala segunda pantalla

                  
                )),
                
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget { 
  @override
  Widget build(BuilContext context) { 
    return Scaffold( 
      appBar: AppBar(title: Text('First  Page'),),
      body: Center(
        Child: RaisedButton( child: Text('to page 2'),
        onPressed: ()
        {
         Navigator.push(context, MaterialPageRoute(builder:  (context)=> SecondPage()));

        }
        )
      )
    )
  }
}


