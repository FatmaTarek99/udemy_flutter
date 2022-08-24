
import 'package:flutter/material.dart';

class MassengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C4D03AQGP8E_GCMTmcg/profile-displayphoto-shrink_800_800/0/1631736842508?e=1653523200&v=beta&t=_PZPrdlbY2XnI81e5J61VNDuInSFsDB3ml3zn7kMKsc'
              ),
            ),
            SizedBox(width: 15.0,),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.grey[200],
            child: Icon(
              Icons.camera_alt,
              size: 20.0,
              color: Colors.black,
            ),
          ),
              onPressed: (){},),
          IconButton(icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.grey[200],
            child: Icon(
              Icons.edit,
              size: 20.0,
              color: Colors.black,
            ),
          ),
            onPressed: (){},),


        ],


      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(width: 15.0,),
                    Text(
                      'Search',
                    ),
                  ],
                ),

              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index)=> buildStoryItem(),
                    separatorBuilder: (context, index)=> SizedBox(
                      width: 20.0,
                    ),
                    itemCount: 5,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index)=>buildChatItem(),
                  separatorBuilder: (context, index)=>SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 15)




            ],
          ),
        ),
      ),

    );
  }

  // 1. build Item
  // 2. build List
  // 3. add Item to list

  Widget buildStoryItem()=> Container(
  width: 60.0,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C4D03AQGP8E_GCMTmcg/profile-displayphoto-shrink_800_800/0/1631736842508?e=1653523200&v=beta&t=_PZPrdlbY2XnI81e5J61VNDuInSFsDB3ml3zn7kMKsc'
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(height: 6.0,),
      Text(
        'Fatma Tarek Mohammed Ibrahim',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),

    ],
  ),
);

  Widget buildChatItem()=> Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C4D03AQGP8E_GCMTmcg/profile-displayphoto-shrink_800_800/0/1631736842508?e=1653523200&v=beta&t=_PZPrdlbY2XnI81e5J61VNDuInSFsDB3ml3zn7kMKsc'
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 8.0,
              backgroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fatma Tarek Mohammed Ibrahim ',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height:5.0 ,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'this is My New Phone Fatma ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                      color:Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '02:00 pm ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                ),
              ],
            ),
          ],

        ),
      ),


    ],
  );






































  // 1. build Item
  // 2. build List
  // 3. add item to list

  //arrow function
  //Widget buildStoryItem()=> Container(
  //   width: 60.0,
  //   child: Column(
  //     children: [
  //       Stack(
  //         alignment: AlignmentDirectional.bottomEnd,
  //         children: [
  //           CircleAvatar(
  //             radius: 30.0,
  //             backgroundImage: NetworkImage(
  //                 'https://media-exp1.licdn.com/dms/image/C4D03AQGP8E_GCMTmcg/profile-displayphoto-shrink_800_800/0/1631736842508?e=1653523200&v=beta&t=_PZPrdlbY2XnI81e5J61VNDuInSFsDB3ml3zn7kMKsc'
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsetsDirectional.only(
  //               bottom: 3.0,
  //               end: 3.0,
  //             ),
  //             child: CircleAvatar(
  //               radius: 8.0,
  //               backgroundColor: Colors.white,
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsetsDirectional.only(
  //               bottom: 3.0,
  //               end: 3.0,
  //             ),
  //             child: CircleAvatar(
  //               radius: 7.0,
  //               backgroundColor: Colors.green,
  //             ),
  //           ),
  //         ],
  //       ),
  //       SizedBox(height: 6.0,),
  //       Text(
  //         'Fatma Tarek Mohammed Ibrahim',
  //         maxLines: 2,
  //         overflow: TextOverflow.ellipsis,
  //       ),
  //
  //     ],
  //   ),
  // );

  // Widget buildChatItem()=>  Row(
  //   children: [
  //     Stack(
  //       alignment: AlignmentDirectional.bottomEnd,
  //       children: [
  //         CircleAvatar(
  //           radius: 30.0,
  //           backgroundImage: NetworkImage(
  //               'https://media-exp1.licdn.com/dms/image/C4D03AQGP8E_GCMTmcg/profile-displayphoto-shrink_800_800/0/1631736842508?e=1653523200&v=beta&t=_PZPrdlbY2XnI81e5J61VNDuInSFsDB3ml3zn7kMKsc'
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsetsDirectional.only(
  //             bottom: 3.0,
  //             end: 3.0,
  //           ),
  //           child: CircleAvatar(
  //             radius: 8.0,
  //             backgroundColor: Colors.white,
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsetsDirectional.only(
  //             bottom: 3.0,
  //             end: 3.0,
  //           ),
  //           child: CircleAvatar(
  //             radius: 7.0,
  //             backgroundColor: Colors.green,
  //           ),
  //         ),
  //       ],
  //     ),
  //     SizedBox(
  //       width: 20.0,
  //     ),
  //     Expanded(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Text(
  //             'Fatma Tarek Mohammed Ibrahim ',
  //             style: TextStyle(
  //               fontSize: 16.0,
  //               fontWeight: FontWeight.bold,
  //             ),
  //             maxLines: 1,
  //             overflow: TextOverflow.ellipsis,
  //           ),
  //           SizedBox(height:5.0 ,),
  //           Row(
  //             children: [
  //               Expanded(
  //                 child: Text(
  //                   'this is My New Phone Fatma ',
  //                   maxLines: 1,
  //                   overflow: TextOverflow.ellipsis,
  //
  //                 ),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.symmetric(horizontal: 10.0,),
  //                 child: Container(
  //                   width: 5.0,
  //                   height: 5.0,
  //                   decoration: BoxDecoration(
  //                     color:Colors.black,
  //                     shape: BoxShape.circle,
  //                   ),
  //                 ),
  //               ),
  //               Text(
  //                 '02:00 pm ',
  //                 maxLines: 1,
  //                 overflow: TextOverflow.ellipsis,
  //
  //               ),
  //             ],
  //           ),
  //         ],
  //
  //       ),
  //     ),
  //
  //
  //   ],
  // );

}
