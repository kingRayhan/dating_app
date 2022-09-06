import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  const CustomAppBar({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title ?? "Appbartitle",
              style: Theme.of(context).textTheme.headline3),
          Row(children: [
            const IconButton(onPressed: null, icon: Icon(Icons.notifications)),
            PopupMenuButton(
              offset: const Offset(0, 32),
              child: const CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.pink,
              ),
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext context) {
                return [
                  _dropdownItem(
                      context: context,
                      title: "Settings",
                      icon: Icons.settings),
                  _dropdownItem(
                      context: context, title: "Logout", icon: Icons.logout),
                ];
              },
            )
          ])
        ],
      ),
    );
  }

  PopupMenuItem<dynamic> _dropdownItem(
      {required BuildContext context,
      required String title,
      required IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: [
          Icon(icon, size: 18.0),
          const SizedBox(width: 8),
          Text(title, style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(45.0);
}
