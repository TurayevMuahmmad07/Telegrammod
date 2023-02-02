import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({super.key});

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}
//Widget bu yuvayga korinadigan har bitta element widget hisoblanadi 
//Scaffold bu bizda materialapp 
////uchun mahsus ishlab chiqarilgan top level conteyner vazifasini bajaradigan hisoblanadi
///scaffoldning tarkibiy qisimlari appbar va body va undan  paski qismi botomnavigationbar va uning ichida floating ekshon butonlari va shunga uxshashlari 
class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}