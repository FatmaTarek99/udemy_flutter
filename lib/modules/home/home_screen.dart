
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.lightBlueAccent,
       leading:
           IconButton(icon: Icon(
             Icons.menu,
           ),
               onPressed: (){}
           ),

       title: Text(
         'HOME',
       ),
       actions: [
         IconButton(
         icon:  Icon(
     Icons.notification_important,),
         onPressed: ()
         {
           print('notification clicked');
         },
         ),
         IconButton(
           icon: Icon(
             Icons.search,
           ),
           onPressed: ()
           {
             print('Hello');
           },
         ),

       ],
       elevation: 0.0,
       centerTitle:true,
     ),
     body: Column(
       children:
       [
         Padding(
           padding: const EdgeInsets.all(50.0),
           child: Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadiusDirectional.only(
                 topStart: Radius.circular(20.0),
               ),
             ),
             clipBehavior: Clip.antiAliasWithSaveLayer,
             child: Stack(
               alignment:Alignment.bottomCenter,
               children: [
                 Image(image: NetworkImage(
                   'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_1280.jpg',
                 ),
                 height: 200.0,
                   width: 200.0,
                   fit: BoxFit.cover,
                 ),
                 Container(
                   padding: EdgeInsets.symmetric(
                     vertical: 10.0,
                   ),
                   color: Colors.black.withOpacity(0.7),
                   width: 200.0,
                   child: Text(
                     'Flower',
                     textAlign:TextAlign.center,
                     style: TextStyle(
                       fontSize: 20.0,
                       color: Colors.white,
                     ),
                   ),
                 ),

               ],
             ),
           ),
         ),

       ],
     ),





     // body:Column(
     //   children:
     //   [
     //     Padding(
     //       padding: const EdgeInsets.all(50.0),
     //       child: Container(
     //         decoration: BoxDecoration(
     //           borderRadius: BorderRadius.circular(
     //             20.0,
     //           ),
     //
     //         ),
     //         clipBehavior: Clip.antiAliasWithSaveLayer,
     //         child: Stack(
     //           alignment: Alignment.bottomCenter,
     //           children: [
     //             Image(
     //                 image: NetworkImage(
     //                  'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512_1280.jpg',
     //                 ),
     //               height: 200.0,
     //               width: 200.0,
     //               fit: BoxFit.cover,
     //             ),
     //             Container(
     //               padding:const EdgeInsets.symmetric(
     //                 vertical: 10.0,
     //               ),
     //               color: Colors.black.withOpacity(0.7),
     //               width: 200.0,
     //               child: Text(
     //                 'Flower',
     //                 textAlign: TextAlign.center,
     //                 style: TextStyle(
     //
     //                   fontSize: 20.0,
     //                   color: Colors.white,
     //                 ),
     //               ),
     //             ),
     //           ],
     //         ),
     //       ),
     //     ),
     //   ],
     // ),
   );
  }
}
