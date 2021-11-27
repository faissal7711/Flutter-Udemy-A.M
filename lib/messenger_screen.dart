import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 20.0,
//              backgroundImage: AssetImage('assets/images/faissol.jpg'),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              'Chats',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
              icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.camera_alt,
                    size: 16,
                    color: Colors.white,
                  )),
              onPressed: () {}),
          IconButton(
              icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.edit,
                    size: 16,
                    color: Colors.white,
                  )),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('Search'),
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
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 5,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Container(
        child: Row(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
//                        backgroundImage: AssetImage('assets/images/faissol.jpg'),
                ),
                CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            SizedBox(
              width: 15.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Faissal Gomaa Faissal Faissal Gomaa Faissal',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Padding(padding: EdgeInsets.all(2)),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Hello my brother (: bla bla bla bla',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 3,
                        ),
                      ),
                      Text('12:8 pm'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget buildStoryItem() => Container(
        width: 60.0,
        child: Column(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
//              backgroundImage: AssetImage('assets/images/faissol.jpg'),
                ),
                CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ],
            ),
            Text(
              'Faissal Gomaa Faissal',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );
}
