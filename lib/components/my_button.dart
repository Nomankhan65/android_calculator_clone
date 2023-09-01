import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
      final String title;
       final  Color color;
        final Color txtColor;
         VoidCallback onPress;
    MyButton({Key? key,
          required this.title,
           this.color= const Color(0xffeeeef0),
            this.txtColor=const Color(0xff4e4d52),
              required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius:BorderRadius.circular(50),
        splashColor:Colors.white,
        onTap:onPress,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:7),
          child: Container(
            height: 75,
            decoration:BoxDecoration(
              color:color,
              shape: BoxShape.circle,
            ),
            child:  Center(
                child: Text(title,
              style:TextStyle(fontSize:30, color:txtColor,fontWeight:FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }
}
