import 'package:flutter/material.dart';

class MbiResultScreen extends StatelessWidget
{
  final int result;
  final bool isMale;
  final int age;

  const MbiResultScreen({super.key, 
   required this.age,
    required this.isMale,
    required this.result,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
            icon: Icon(
            Icons.keyboard_arrow_left_sharp,
          ),
        ),
        backgroundColor: Colors.blue,
        title: Text('MBI Result'),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender:${isMale ? 'Male' : 'Female'}',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'Result:$result',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age:$age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
