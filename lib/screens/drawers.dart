import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messengerui/constants/text_style.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: CircleAvatar(
                      radius: 30,
                      foregroundImage: AssetImage('assets/images/qq.jpg')),
                ),
                Text(
                  'Ashish Timilsina',
                  style: drawertextname,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.black12,
              thickness: 2,
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.bolt_horizontal_circle_fill,
                color: Colors.black,
              ),
              title: Text(
                'Chats',
                style: draweritem,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.home_rounded,
                color: Colors.black,
              ),
              title: Text(
                'Marketplace',
                style: draweritem,
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.bolt_horizontal_circle,
                color: Colors.black,
              ),
              title: Text(
                'Message requests ...',
                style: draweritem,
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.archivebox_fill,
                color: Colors.black,
              ),
              title: Text(
                'Archive',
                style: draweritem,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Communities',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'EDIT',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: const [
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(CupertinoIcons.group),
                  ),
                  title: Text('Unemployed Memesters'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(CupertinoIcons.device_laptop),
                  ),
                  title: Text('IT community of Nepal'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(CupertinoIcons.sportscourt),
                  ),
                  title: Text('EPL Fight Club'),
                ),
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.sports),
                  ),
                  title: Text('Arsenal Supporters'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
