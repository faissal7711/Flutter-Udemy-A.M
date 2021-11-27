import 'package:flutter/material.dart';

class UserModel {
  @required
  final int id;
  @required
  final String name;
  @required
  final String phone;

  UserModel({this.id, this.name, this.phone});
}

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: 'Faissol gomaa', phone: '01274751555'),
    UserModel(id: 2, name: 'Hesham gomaa', phone: '012887778787'),
    UserModel(id: 3, name: 'Mo gomaa', phone: '012747849885'),
    UserModel(id: 4, name: 'Faissol gomaa', phone: '01274751555'),
    UserModel(id: 5, name: 'Hesham gomaa', phone: '012887778787'),
    UserModel(id: 6, name: 'Mo gomaa', phone: '012747849885'),
    UserModel(id: 7, name: 'Faissol gomaa', phone: '01274751555'),
    UserModel(id: 8, name: 'Hesham gomaa', phone: '012887778787'),
    UserModel(id: 9, name: 'Mo gomaa', phone: '012747849885'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0),
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

  Widget buildUserItem(UserModel userModel) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 25,
              child: Text(
                '${userModel.id}',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '${userModel.name}',
                  style: TextStyle(fontSize: 35),
                ),
                Text(
                  '${userModel.phone}',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      );
}
