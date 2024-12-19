import 'package:flutter/material.dart';

class Calculater extends StatefulWidget {
  static final String routes = "CalcultorScreem";

   Calculater({Key? key}) : super(key: key);

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {
  TextEditingController num1Controller = TextEditingController();

  TextEditingController num2Controller = TextEditingController();

double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: num1Controller,
                      decoration: InputDecoration(
                        labelText: "Num 1",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.black,width: 2),
                        )
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: num2Controller,
                      decoration: InputDecoration(
                        labelText: "Num 2",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.black,width: 2),
                        )
                      ),
                    ),
                  ],
                ),
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: Colors.teal,
                  width: double.infinity,
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  height: MediaQuery.of(context).size.height * .15,
                  color: Colors.white,
                  child: Center(child: Text("Result = $result")),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      result=double.parse(num1Controller.text) + double.parse(num1Controller.text);
                      setState(() {});
                    }, child: Text("+")),
                    ElevatedButton(onPressed: (){
                      result=double.parse(num1Controller.text) - double.parse(num1Controller.text);
                      setState(() {});
                    }, child: Text("-")),
                    ElevatedButton(onPressed: (){
                      result=double.parse(num1Controller.text) * double.parse(num1Controller.text);
                      setState(() {});
                    }, child: Text("x")),
                    ElevatedButton(onPressed: (){
                      result=double.parse(num1Controller.text) / double.parse(num1Controller.text);
                      setState(() {});
                    }, child: Text("/")),
                  ],
                ),
          )),
        ],
      ),
    );
  }
}
