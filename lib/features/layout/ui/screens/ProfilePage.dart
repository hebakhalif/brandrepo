import 'package:flutter/material.dart';

class ListItem {
  final String text;        // النص الذي سيظهر في العنصر
  final IconData leadingIcon; // الأيقونة على اليسار
  final IconData trailingIcon; // الأيقونة على اليمين

  ListItem({
    required this.text,
    required this.leadingIcon,
    required this.trailingIcon,
  });
}

class ProfileList extends StatelessWidget {
  // قائمة من العناصر التي نريد عرضها
  final List<ListItem> items = [
    ListItem(
      text: 'Edit Profile',
      leadingIcon: Icons.edit_square,
      trailingIcon: Icons.chevron_right,
    ),
    ListItem(
      text: 'Change Password',
      leadingIcon: Icons.lock,
      trailingIcon: Icons.chevron_right,
    ),
    ListItem(
      text: 'Privacy Settings',
      leadingIcon: Icons.more_time,
      trailingIcon: Icons.chevron_right,
    ),
    ListItem(
      text: 'Notifications',
      leadingIcon: Icons.remove_red_eye_outlined,
      trailingIcon: Icons.chevron_right,
    ),
    ListItem(
      text: 'Help',
      leadingIcon: Icons.help,
      trailingIcon: Icons.chevron_right,
    ),
      ListItem(
      text: 'Help',
      leadingIcon: Icons.help,
      trailingIcon: Icons.chevron_right,
    ),
      ListItem(
      text: 'Help',
      leadingIcon: Icons.help,
      trailingIcon: Icons.chevron_right,
    ),
  ];
  @override
  Widget  build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: items.length,  // عدد العناصر في القائمة
        separatorBuilder: (context, index) => Divider(thickness: 1,),  // فاصل بين العناصر
        itemBuilder: (context, index) {
          final item = items[index];  // الحصول على العنصر الحالي من القائمة
          return ListTile(
            leading: Icon(item.leadingIcon, 
            size: 28,
             color: const Color.fromARGB(255, 83, 83, 83)
             ),  // الأيقونة على اليسار
            title:
             Text(
              item.text,  // النص الرئيسي
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.w500
                ),  // تنسيق النص
            ),
            trailing: Icon(
              item.trailingIcon,
              size: 33,
               color: const Color.fromARGB(255, 83, 83, 83),
               ),  // السهم على اليمين
            onTap: () {},
          );
        },
      ),
    );
  }
}