import 'package:flutter/material.dart';



class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  String  output = "";
  String oprand = "";
  String text = "";
  double num1 = 0;
  double num2 = 0;
void buttonpressd(String txt){
if(txt=="C"){
 output = "";
 oprand = "";
 text = "";
  num1 = 0;
  num2 = 0;
}
else if(txt=="/"||txt=="*"||txt=="-"||txt=="+"){
  num1 = double.parse(text);
  oprand = txt;
  output="";
}
else if(txt=="="){
  num2 = double.parse(text);
  if(oprand=="/") {
    output=(num1/num2).toString();
  }
  else if(oprand=="X") {
    output=(num1*num2).toString();
  }
  else if(oprand=="-") {
    output=(num1-num2).toString();
  }
  else if(oprand=="+") {
    output=(num1+num2).toString();
  }
}
else{
  output+=txt;
}
setState(() {
   text =  output ;
});
}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          child: Text(
            text,
            style: TextStyle(fontSize: 20,color: Colors.white)),
          height: 250,
          color: Color.fromARGB(255, 163, 107, 107),
          alignment: Alignment.centerLeft,
        ),
        SizedBox(height: 20,),

        Row(children: [
          Expanded(child: ElevatedButton(
            child: Text("7"),
            onPressed:(){
              buttonpressd("7");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("8"),
            onPressed:(){
              buttonpressd("8");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("9"),
            onPressed:(){
              buttonpressd("9");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("/"),
            onPressed:(){
              buttonpressd("/");
            } ,)),
        ],),
        Row(children: [
          Expanded(child: ElevatedButton(
            child: Text("4"),
            onPressed:(){
              buttonpressd("4");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("5"),
            onPressed:(){
              buttonpressd("5");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("6"),
            onPressed:(){
              buttonpressd("6");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("X"),
            onPressed:(){
              buttonpressd("*");
            } ,)),
        ],),
        Row(children: [
          Expanded(child: ElevatedButton(
            child: Text("1"),
            onPressed:(){
              buttonpressd("1");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("2"),
            onPressed:(){
              buttonpressd("2");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("3"),
            onPressed:(){
              buttonpressd("3");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("-"),
            onPressed:(){
              buttonpressd("-");
            } ,)),
        ],),
        Row(children: [
          Expanded(child: ElevatedButton(
            child: Text("C"),
            onPressed:(){
              buttonpressd("C");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("0"),
            onPressed:(){
              buttonpressd("0");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("="),
            onPressed:(){
              buttonpressd("=");
            } ,)),

            SizedBox(width: 10,),

            Expanded(child: ElevatedButton(
            child: Text("+"),
            onPressed:(){
              buttonpressd("+");
            } ,)),
        ],),

        SizedBox(height: 20,),
        Container(
          height: 200,
          alignment: Alignment.center,
          child: Text("badr",style: TextStyle(color: Colors.black,fontSize: 80),),)
      ]),
    );
  }
}