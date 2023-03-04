import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messengerui/models/picture_icon.dart';
import 'package:messengerui/screens/bottomnavbar.dart';
import 'package:messengerui/screens/drawers.dart';
import 'package:messengerui/widgets/textfield_widget.dart';

import '../constants/text_style.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text(
          'Chats',
          style: appbartext,
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Colors.black12,
            child: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundColor: Colors.black12,
            child: Icon(
              CupertinoIcons.pencil,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Textfields(),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              for (var item in lstInfo)
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 30,
                        foregroundImage: AssetImage(item.image),
                      ),
                    ),
                    Text(item.name),
                    Text(item.surname),
                  ],
                ),
            ]),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: lstInfo.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    foregroundImage: AssetImage(lstInfo[index].image),
                  ),
                  title: Row(children: [
                    Text(lstInfo[index].name),
                    Text(lstInfo[index].surname)
                  ]),
                  subtitle: Text(lstInfo[index].message),
                );
              },
            ),
          ),
          const MyStatefulWidget(),
        ],
      ),
    );
  }
}
