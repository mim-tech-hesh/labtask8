import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mega shop',
      firstIcon:(Iconsax.notification_bimg_outline, [
      ),//FAppBar
      BottomNavigationBarItem(
        icon:Icon(Iconsax.home_outline),
        label:"HOME"
      ),// BottomNavigationBarItem
      BottomNavigationBarItem(
        icon:Icon(
          Iconsax.heart_outline,
         ), //Icon
         label:"WISHLIST"
       ),BottomNavigationBarItem
       BottomNavigationBarItem(
        icon:Icon(
          Iconsax.heart_outline,
        ),
        label:"WISHLIST"),
        BottomNavigationBarItem(
          icon:Icon(
            Iconsax.shopping_bag_outline,
          ),
          label:"ORDER"),
          BottomNavigationBarItem(
            icon:Icon(applyTextScaling: Iconsax.user_outline,
            ),
            label:"ACCOUNT"),
    ]), //BottomNavigationbar
    );Scaffold




     