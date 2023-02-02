import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          child: Container(
            height: 100.0, //height bu Containerni balandligi
            width: 100.0, //width bu Containernig hajmi
            color: Colors.yellow, //Color bu containernig rang beradigan qismi
            alignment: Alignment
                .bottomCenter, //aligment bu   Containerni interfeysda joylashadigan o'rni
            decoration: BoxDecoration(
              borderRadius: BorderRadius
                  .only(), //containerni burchaklarini olib tashlaydi
              border: Border.all(), //COntainerni yasatish

              image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg?cs=srgb&dl=pexels-lukas-rodriguez-3680219.jpg&fm=jpg'),
                fit: BoxFit.cover,
              ),
              shape:
                  BoxShape.circle, //shape bu kontainerni dumaloq qilib beradi
              boxShadow: [
                //bu containerga soya tushurib beradi,
                BoxShadow(
                  color: Colors.yellow,
                  offset: Offset(0, 0), //ofiset bu soyani surish
                  blurRadius:
                      2, //blurRadius soyadagi rangni toq yoki och qiladi
                  blurStyle:
                      BlurStyle.inner, //bu soyaning kurinishini tugirlash
                  spreadRadius: 1,
                ),
              ],
              gradient: LinearGradient(
                  //gradiant bu ikkta rangni bir biriga qushadi
                  end: Alignment.bottomLeft, //bu rangning sochilishi uzgaradi
                  begin: Alignment.topRight,
                  colors: [
                    Colors.yellow,
                    Colors.black,
                  ]),
              backgroundBlendMode: BlendMode.color,
            ),
            margin: EdgeInsets.only(top: 20, left: 10), //margin suradi
            padding: EdgeInsets.only(
                top: 20, left: 10), //padding containerning ichidan siqadi
            transform: Matrix4.skewY(
                10), //bu bizning containerning qiyshaytririb ketaveradi
            transformAlignment: Alignment
                .center,
                 //bu transform ning aligmenti joylashish nuqtasi
            child:const Align(
              alignment: Alignment(0, 0),
              child: Text('mening ismim kontainer',textAlign: TextAlign.center,)),
            foregroundDecoration:
                BoxDecoration(border: Border.all(color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange,
                    blurRadius: 10,

                  )
                ]
                ),
                clipBehavior: Clip.none,
                constraints: BoxConstraints(//bu asoan kelayotgan asste image buy ruq assosida berilgan razmerdan oshirmidi
                  minWidth: 20,
                  maxHeight: 200,
                  maxWidth: 200,
                  minHeight: 20,
                  ),
          ),
        ),
      ),
    );
  }
}
