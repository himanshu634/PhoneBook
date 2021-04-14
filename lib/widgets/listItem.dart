import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String name;
  final String number;
  final Function _deletePhoneNumber;

  ListItem(this.name, this.number, this._deletePhoneNumber);

  @override
  Widget build(BuildContext context) {
    // double _widthOfMobile = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      child: ListTile(
        leading: CircleAvatar(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Text(
              name[0].toUpperCase(),
              style: TextStyle(
                fontSize: 25,
                // fontWeight: FontWeight.bold,
                color: Colors.white60,
              ),
            ),
          ),
          backgroundColor: Colors.black,
          radius: 25,
        ),
        contentPadding: EdgeInsets.fromLTRB(20.0, -1.0, 20.0, -1),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          number,
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        // shape:,
        // contentPadding: EdgeInsets.symmetric(horizontal: ),
        // contentPadding: EdgeInsets.symmetric(vertical: -9),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
            color: Colors.red,
          ),
          onPressed: () {
            _deletePhoneNumber(name);
          },
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.black12,
          style: BorderStyle.solid,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            color: Colors.black,
          ),
        ],
        color: Colors.white,
      ),
      // color: Colors.white,
      margin: EdgeInsetsDirectional.fromSTEB(5.0, 4.0, 5.0, 4.0),
    );
  }
}

//  Container(
//       child: Row(
//         children: <Widget>[
//           Container(
//             width: _widthOfMobile * 0.2,
//             child: CircleAvatar(
//               child: Icon(
//                 Icons.person,
//                 color: Colors.grey,
//               ),
//               backgroundColor: Colors.black54,
//               radius: 26,
//             ),
//           ),
//           Container(
//             width: _widthOfMobile * 0.5,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 Container(
//                   // padding: EdgeInsets.all(),

//                   child: Text(
//                     name,
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: Text(
//                     number,
//                     style: TextStyle(
//                       fontSize: 15,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             width: 60,
//           ),
//           Container(
//             child: IconButton(
//               icon: Icon(
//                 Icons.delete,
//                 color: Colors.red,
//               ),
//               onPressed: null,
//             ),
//           ),
//         ],
//       ),
//       // color: Colors.blue,
//       padding: EdgeInsets.all(3),
//       width: MediaQuery.of(context).size.width,
//       margin: EdgeInsets.only(
//         bottom: 3,
//         left: 1,
//         right: 1,
//         top: 3,
//       ),
//       // decoration: BoxDecoration(
//       //   border: Border.all(
//       //     color: Colors.black,
//       //     width: 1,
//       //   ),
//       //   borderRadius: BorderRadius.circular(12),
//       //   color: Colors.white,
//       // ),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         border: Border.all(
//           width: 2,
//           style: BorderStyle.solid,
//           color: Colors.black12,
//         ),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 5,
//             color: Colors.black45,
//             // offset: Offset.zero,
//             spreadRadius: 2,
//           ),
//         ],
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       height: MediaQuery.of(context).size.height * 0.1317,
//       // width: _widthOfMobile,
//     );
