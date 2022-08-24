import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;

  BMIResultScreen({
    @required this.result,
    @required this.isMale,
    @required this.age,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'BMI RESULT',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0,),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Gender : ${isMale? 'Male' : 'Female'}',
                            style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.pinkAccent,
                            ),
                          ),
                          Text(
                            'Result : $result',
                            style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.pinkAccent,
                            ),
                          ),
                          Text(
                            'Age : $age',
                            style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.pinkAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color:Colors.grey[900],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
