 import 'package:flutter/material.dart';
 import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {


  Random random = Random();
  int x = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lottery App',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const  Center(
                child: Text(
              'Lotterry winning number 4',
              style:   TextStyle(fontSize: 20),
            )),
          const SizedBox(height: 20,),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: x == 4 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const    Icon(
                      Icons.done_all,
                      color: Colors.green,
                      size: 30,
                    ),
                    const   SizedBox(height: 15,),
                    Text(
                      'Congratualations you have Won the Lottery, your number is $x',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const    Icon(
                      Icons.error_outlined,
                      color: Colors.red,
                      size: 30,
                    ),
                    const   SizedBox(height: 15,),
                    Text(
                      'Better luck next time your number is $x \n try again',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x = random.nextInt(6);
            print(x);
            setState(() {

            });
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
