import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen>
{

  int counter = 1;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COUNTER',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Container(
                child: Text(
                  'Fatma',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                alignment: Alignment.center,
                color: Colors.red,
                width: 200.0,
                height: 50.0,
                padding: EdgeInsets.all(10),
              ),
              onTap: (){
                print('Fatma',);
              },

            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                TextButton(
                    onPressed: ()
                    {
                      setState(() {
                        counter--;
                        print(counter);
                      });
                    },
                    child: Text(
                      'MINUS',
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  ),
                  child: Text(
                    '$counter',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 50.0,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: ()
                  {
                    setState(() {
                      counter++;
                      print(counter);
                    });
                  },
                  child: Text(
                    'PLUS',
                  ),
                ),

              ],
            ),
            Row(
              children: [
                TextButton(onPressed: (){}, child: Text('A'),),
                OutlinedButton(onPressed: (){}, child: Text('B'),),
                ElevatedButton(onPressed: (){}, child: Text('C'),),
              ],
            ),
            Row(
              children: [
                TextButton.icon(onPressed: (){}, label: Text('A'),icon: Icon(Icons.phone),),
                OutlinedButton.icon(onPressed: (){}, label: Text('B'),icon: Icon(Icons.lock),),
                ElevatedButton.icon(onPressed: (){}, label: Text('C'),icon: Icon(Icons.help_outline),),
              ],
            ),

          ],
        ),
      ),
    );
  }
}














// class CounterScreen extends StatefulWidget {
//
//   // State less contain one class provide widget
//
//   //State full contain two class
//   // في حال كنت عايزة أي تغيير يظهر عالشاشة
//   //1. first class provide widget
//   //2. second class provide states from widget
//
//   @override
//   State<StatefulWidget> createState() => _CounterScreenState();
// }
//
// class _CounterScreenState extends State<CounterScreen> {
//   int counter =1;
//
//   //1. constructor
//   //2. init state
//   //3. build
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'COUNTER',
//         ),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children:
//           [
//             TextButton(onPressed: ()
//             {
//               setState(() {
//                 counter--;
//                 print(counter);
//               });
//
//             },
//                 child: Text(
//                   'MINUS',
//                 ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 20.0,
//               ),
//               child: Text(
//                 '$counter',
//                 style: TextStyle(
//                   fontSize: 50.0,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//             TextButton(onPressed: ()
//             {
//               setState(() {
//                 counter++;
//                 print(counter);
//               });
//
//             },
//               child: Text(
//                 'PLUS',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
