import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import '../components/my_button.dart';
class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput='';
  var result='';
  final myColor=const Color(0xff308704);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:const Color(0xffffffff),
      body:SafeArea(
        child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:10 ),
              child: Column(
                mainAxisAlignment:MainAxisAlignment.end,
                crossAxisAlignment:CrossAxisAlignment.end,
                children: [
                  const Align(
                    alignment:Alignment.bottomRight,
                  ),
                Text(userInput,style:const TextStyle(fontSize:30,color:Colors.black87,fontWeight:FontWeight.bold),),
                  const SizedBox(height:20 ,),
                  Text(result,style:TextStyle(fontSize:30,color:myColor,fontWeight:FontWeight.bold),),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal:13),
            child: Divider(
              color:Colors.grey
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10,vertical:20),
            child: Expanded(
              flex:2,
              child: Column(

                children: [
                  Row(
                    children: [
                      MyButton(title:'C',txtColor:const Color(0xfff9645b),onPress:(){
                        userInput='';
                        result='';
                        setState(() {

                        });
                      },),
                      MyButton(title:'+/-',txtColor:myColor,onPress:(){
                        userInput+='-';
                        setState(() {

                        });
                      }),
                      MyButton(title:'%',txtColor:myColor,onPress:(){
                        userInput+='%';
                        setState(() {

                        });
                      }),
                      MyButton(title:'÷',txtColor:myColor,onPress:(){
                        userInput+='/';
                        setState(() {

                        });
                      }),


                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title:'7',onPress:(){
                        userInput+='7';
                        setState(() {

                        });
                      },),
                      MyButton(title:'8',onPress:(){
                        userInput+='8';
                        setState(() {

                        });
                            }),
                      MyButton(title:'9',onPress:(){
                        userInput+='9';
                        setState(() {

                        });
                      }),
                      MyButton(title:'X',txtColor:myColor,onPress:(){
                        userInput+='*';
                        setState(() {

                        });
                      }),


                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title:'4',onPress:(){
                        userInput+='4';
                        setState(() {

                        });
                      },),
                      MyButton(title:'5',onPress:(){
                        userInput+='5';
                        setState(() {

                        });
                      }),
                      MyButton(title:'6',onPress:(){
                        userInput+='6';
                        setState(() {

                        });
                      }),
                      MyButton(title:'-',txtColor:myColor,onPress:(){
                        userInput+='-';
                        setState(() {

                        });
                      }),


                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title:'1',onPress:(){
                        userInput+='1';
                        setState(() {

                        });
                      },),
                      MyButton(title:'2',onPress:(){
                        userInput+='2';
                        setState(() {

                        });
                      }),
                      MyButton(title:'3',onPress:(){
                        userInput+='3';
                        setState(() {

                        });
                      }),
                      MyButton(title:'+',txtColor:myColor,onPress:(){
                        userInput+='+';
                        setState(() {

                        });
                      }),


                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title:'0',onPress:(){
                        userInput+='0';
                        setState(() {

                        });
                      },),
                      MyButton(title:'.',onPress:(){
                        userInput+='.';
                        setState(() {

                        });
                      }),
                      MyButton(title:'✕',onPress:(){
                        userInput=userInput.substring(0,userInput.length-1);
                        setState(() {

                        });
                      }),
                      MyButton(title:'=',txtColor:Colors.white,color:const Color(0xff308704),onPress:(){
                        eqaualPres();
                        setState(() {

                        });
                      }),


                    ],
                  ),
                ],
              ),
            ),
          ),

        ],
        ),
      ),
    );

  }
  void eqaualPres(){
  Parser p=Parser();
  Expression expression=p.parse(userInput);
  ContextModel contextModel= ContextModel();
  double eval=expression.evaluate(EvaluationType.REAL, contextModel);
  result=eval.toString();
  }
}
