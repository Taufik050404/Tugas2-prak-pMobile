import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BussinessCard());
}

class BussinessCard extends StatelessWidget {
  const BussinessCard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TampilanKartu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TampilanKartu extends StatelessWidget {
  const TampilanKartu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 3, 148, 17),
              backgroundImage: NetworkImage('https://framerusercontent.com/images/qJZW5XYulQcj5AM1YWp4BRmA.webp'),
              radius: 70,
            ),
            Text('Fufufafa',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            
            ),
            Text('Gibran Rakabuming',
              style: GoogleFonts.agdasima(
                fontSize: 40,
                fontWeight: FontWeight.bold
                color: Colors.red
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.call), 
                title: Text('08123456789'),
              ),
            ),
            SizedBox(height: 15,),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.mail), 
                title: Text('chillipari@gmail.com'),
                // trailing: Icon(Icons.arrow_circle_right_sharp),
                // tileColor: const Color.fromARGB(255, 244, 244, 244),
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.tiktok), 
                title: Text('@rkgbrn'),
              ),
            ),

            
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(Icons.facebook), 
                title: Text('Gibran Rakabuming'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}