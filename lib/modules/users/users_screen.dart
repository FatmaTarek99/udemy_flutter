
import 'package:flutter/material.dart';
import 'package:udemy_flutter/models/user/user_model.dart';



class UserScreen extends StatelessWidget {

  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Fatma Tarek',
      phone: '576989',
    ),
    UserModel(
      id: 2,
      name: 'Habiba Tarek',
      phone: '098978',
    ),
    UserModel(
      id: 3,
      name: 'Zenab Tarek',
      phone: '124367',
    ),
    UserModel(
      id: 1,
      name: 'Fatma Tarek',
      phone: '576989',
    ),
    UserModel(
      id: 2,
      name: 'Habiba Tarek',
      phone: '098978',
    ),
    UserModel(
      id: 3,
      name: 'Zenab Tarek',
      phone: '124367',
    ),
    UserModel(
      id: 1,
      name: 'Fatma Tarek',
      phone: '576989',
    ),
    UserModel(
      id: 2,
      name: 'Habiba Tarek',
      phone: '098978',
    ),
    UserModel(
      id: 3,
      name: 'Zenab Tarek',
      phone: '124367',
    ),
    UserModel(
      id: 1,
      name: 'Fatma Tarek',
      phone: '576989',
    ),
    UserModel(
      id: 2,
      name: 'Habiba Tarek',
      phone: '098978',
    ),
    UserModel(
      id: 3,
      name: 'Zenab Tarek',
      phone: '124367',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index)=> buildUserItem(users[index]) ,
          separatorBuilder: (context, index)=> Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
              end: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.grey[300],

            ),
          ),
          itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:
      [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ],
    ),
  );

}





// class UserModel{
//   final int id;
//   final String Name;
//   final String Phone;
//
//   UserModel({
//     @required this.id,
//     @required this.Name,
//     @required this.Phone,
// });
// }
//
// class UsersScreen extends StatelessWidget {
//
//   List<UserModel> users = [
//     UserModel(
//       id: 1,
//       Name: 'Fatma Tarek',
//       Phone: '6879808',
//     ),
//     UserModel(
//       id: 2,
//       Name: 'Habiba Tarek',
//       Phone: '68988321',
//     ),
//     UserModel(
//       id: 3,
//       Name: 'Zenab Tarek',
//       Phone: '13423456',
//     ),
//     UserModel(
//       id: 1,
//       Name: 'Fatma Tarek',
//       Phone: '6879808',
//     ),
//     UserModel(
//       id: 2,
//       Name: 'Habiba Tarek',
//       Phone: '68988321',
//     ),
//     UserModel(
//       id: 3,
//       Name: 'Zenab Tarek',
//       Phone: '13423456',
//     ),
//     UserModel(
//       id: 1,
//       Name: 'Fatma Tarek',
//       Phone: '6879808',
//     ),
//     UserModel(
//       id: 2,
//       Name: 'Habiba Tarek',
//       Phone: '68988321',
//     ),
//     UserModel(
//       id: 3,
//       Name: 'Zenab Tarek',
//       Phone: '13423456',
//     ),
//     UserModel(
//       id: 1,
//       Name: 'Fatma Tarek',
//       Phone: '6879808',
//     ),
//     UserModel(
//       id: 2,
//       Name: 'Habiba Tarek',
//       Phone: '68988321',
//     ),
//     UserModel(
//       id: 3,
//       Name: 'Zenab Tarek',
//       Phone: '13423456',
//     ),
//
//   ];
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Users',
//         ),
//       ),
//       body: ListView.separated(
//           itemBuilder: (context, index) => buildUserItem(users[index]),
//           separatorBuilder: (context, index) => Padding(
//             padding: const EdgeInsetsDirectional.only(
//               start: 20.0,
//               end: 20.0,
//             ),
//             child: Container(
//               width: double.infinity,
//               height: 1.0,
//               color: Colors.grey[300],
//             ),
//           ),
//           itemCount: users.length,
//       ),
//     );
//   }
//
//   Widget buildUserItem(UserModel user) => Padding(
//     padding: const EdgeInsets.all(20.0),
//     child: Row(
//       children:
//       [
//         CircleAvatar(
//           radius: 25.0,
//           child: Text(
//             '${user.id}',
//             style: TextStyle(
//               fontSize: 25.0,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         SizedBox(
//           width: 20.0,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children:
//           [
//             Text(
//               '${user.Name}',
//               style: TextStyle(
//                 fontSize: 25.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               '${user.Phone}',
//               style: TextStyle(
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//
//         ),
//       ],
//     ),
//   );
//
// //1. build item
// //2. build list
// //3. add item to list
// }
