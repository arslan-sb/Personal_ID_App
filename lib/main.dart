import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int batch=2021;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.blueGrey[900],

      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blueGrey[800] ,
        title:const Text('Personal ID',
            style: TextStyle(
            fontSize: 20,
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {

                batch++;
              if(batch>2030){
                batch=2021;
              }
            });

          },
        backgroundColor: Colors.blueGrey[700],
        elevation: 2,
          child:const Icon(Icons.add),

      ),
      body: Padding(

          padding:const EdgeInsets.fromLTRB(20, 30, 20, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: Image.network('https://i0.wp.com/darkcatalogs.com/wp-content/uploads/2021/11/Soft-Vintage-boy-Outfit-Idea-286-Robux-.png?w=352&ssl=1'),
              ),
            ),
           const Divider(
              height: 60,
              thickness: 1,
             color: Colors.grey,
            ),
            //const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Name: ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(width: 20,),
                Text(
                    'Muhammad Arslan Shaukat',
                    style: TextStyle(
                    color: Colors.amber[300],
                    fontSize: 16,
                ),
                ),
              ],
            ),
           const SizedBox(height: 10,),
           Row(
             children: [
               const Text(
                    'Batch: ',
                    style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                    )
                ),
               const SizedBox(width: 20,),
               Text(
                   'BSCS $batch',
                   style: TextStyle(
                     color: Colors.amber[300],
                     fontSize: 16,

                   )
               ),
             ],
           ),
            //const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               const IconButton(onPressed: null,
                   icon: Icon(Icons.mail,color: Colors.grey,)

               ),
                const SizedBox(width: 20,),
                Text('arslanshaukat009@gmail.com',
                  style: TextStyle(
                  color: Colors.amber[300],
                  fontSize: 16,
                )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


