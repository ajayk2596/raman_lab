import 'package:flutter/material.dart';
import 'package:raman_lab/views/alert_dialog/alert_dialog_screen.dart';
import 'package:raman_lab/views/bottom_navigationbar/bottom_navigation_bar_screen.dart';
import 'package:raman_lab/views/bottom_sheet/bottom_sheet_screen.dart';
import 'package:raman_lab/views/card/card_screen.dart';
import 'package:raman_lab/views/check_box/check_box_screen.dart';
import 'package:raman_lab/views/data_sending/send_data_screen.dart';
import 'package:raman_lab/views/gride_view/grid_view_builder_screen.dart';
import 'package:raman_lab/views/gride_view/grid_view_custom_screen.dart';
import 'package:raman_lab/views/gride_view/grid_view_extent_screen.dart';
import 'package:raman_lab/views/gride_view/gride_view_coount_screen.dart';
import 'package:raman_lab/views/listview/list_view_builder_screen.dart';
import 'package:raman_lab/views/listview/list_view_custom_screen.dart';
import 'package:raman_lab/views/listview/list_view_screen.dart';
import 'package:raman_lab/views/listview/list_view_seprated_screen.dart';
import 'package:raman_lab/views/popup_menu_button/popup_menu_button_screen.dart';
import 'package:raman_lab/views/radio/radio_screen.dart';
import 'package:raman_lab/views/stack/stack_screen.dart';
import 'package:raman_lab/views/switch_button/switch_screen.dart';
import 'package:raman_lab/views/tab_bar_view/tab_bar_view_screen.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: CheckBoxScreen(),
   );
  }

}