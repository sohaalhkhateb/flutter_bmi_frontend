import 'dart:math';

import 'package:flutter/material.dart';

import '../bmi_result/mbi_result_screen.dart';


class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen>
{
  bool isMale = true;
  double height = 120;
  int weight = 40;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'BMI Calculater',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body:
      Column(
        children:
        [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                        isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: isMale ? Colors.blue : Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(
                              image: AssetImage('assets/images/Male_35764.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState(()
                        {
                         isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: isMale ? Colors.grey[400] : Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                          [
                            Image(
                              image: AssetImage('assets/images/Female_35792.png'),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children:
                      [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                         width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                        max: 220.0,
                        min: 80,
                        onChanged: (value)
                        {
                          setState(() {
                            height = value;
                          });
                          },
                    ),

                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:
                [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0,),
                                color: Colors.grey[400],
                    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                heroTag: 'weight-',
                                backgroundColor: Colors.blue,
                                mini: true,
                                  child: Icon(
                                    color: Colors.white,
                                    Icons.remove,
                                  ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight+',
                                backgroundColor: Colors.blue,
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0,),
                                color: Colors.grey[400],
                    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [
                              FloatingActionButton(
                                  onPressed: ()
                                  {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                heroTag: 'age-',
                                backgroundColor: Colors.blue,
                                mini: true,
                                  child: Icon(
                                    color: Colors.white,
                                    Icons.remove,
                                  ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              FloatingActionButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                backgroundColor: Colors.blue,
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],

                      ),
                    ),
                  ),
                  ]
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            height: 50.0,
            child: MaterialButton(
                onPressed: ()
                {
                  double result = weight / pow(height / 100, 2);
                  print(result.round());

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MbiResultScreen(
                        age: age,
                        isMale: isMale,
                        result: result.round(),
                      ),
                      ),
                  );
                },
            child: Text(
              'CALCULATE',
              style: TextStyle(
                color: Colors.white,
              ),
            ),),
          ),
        ],
      ),
    );
  }
}

