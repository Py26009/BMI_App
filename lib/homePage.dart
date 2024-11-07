import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {


   @override
  State<StatefulWidget> createState() {
    return _Homepage();

  }
}
   class _Homepage extends State<homePage>{

  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  int height = 0;
  int weight = 0;
  String result = "";




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Body MAss Index"),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
                Center(
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xffF6F1AB),
                      border: Border.all(color: Colors.black,),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text('Your BMI is: \n ${result}', style: TextStyle(fontSize: 28, fontStyle: FontStyle.italic),)),
                  ),
                ),
            SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffffE7C3F3),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.male, size: 36,),
                ),
                Container(
                  width:  100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffffE7C3F3),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.female, size: 36,),
                )
              ],
            ),
            SizedBox(
              height:  40,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                   controller: ageController,
                    onChanged: (Value){
                     print(Value);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: Text('Age'),
                      hintText: 'Enter your age',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                       borderSide: BorderSide(
                         width: 2,
                         color: Colors.grey
                       ),
                      )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: heightController,
                    onChanged: (Value){
                      print(Value);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: Text('height'),
                      hintText: 'Enter your height in cm',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey,
                        )
                      )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: weightController,
                    onChanged: (Value){
                      print(Value);
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        label: Text('weight'),
                        hintText: 'Enter your weight in kg',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.grey,
                            )
                        )
                    ),
        
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: (){
              int h = int.parse(heightController.text);
              int w = int.parse(weightController.text);
              result ="${(w*10000)/(h*h)}";



               setState(() {

              });

            }, child: Text('Calculate', style: TextStyle(fontSize: 30),),),
          ],
        
        ),
      ),
    );
  }
  
} 