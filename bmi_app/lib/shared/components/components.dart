import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';

Widget defultButton({
  double width = double.infinity,
  Color background = Colors.teal,
  bool isUpperCase = true,
  double radius = 0.0,
  required VoidCallback function,
  required String text,
}) =>
Container(
width: width,
height: 40.0,
  decoration: BoxDecoration(
    color: background,
    borderRadius: BorderRadius.circular(radius),
  ),
child: MaterialButton(
onPressed: function,
child: Text(
isUpperCase? text.toUpperCase() : text,
style: TextStyle(
color: Colors.white,
),
),
),
);

Widget defultTextButton({
  required VoidCallback? function,
  required String text
})
=> TextButton(onPressed: function,
    child: Text(text.toUpperCase(),
    )
);

Widget defultTextField({
  required TextEditingController controller,
  required TextInputType type,
  required String? Function(String?) validate,
  bool isPssword= false,
  Function(String)? onChange,
  VoidCallback? onTap,
  Function(String)? onSubmit,
  required String label,
  required IconData prefix,
  IconData? suffix,
  VoidCallback? onpress,
}) =>
TextFormField(
  controller: controller,
keyboardType: type,
obscureText: isPssword,
onFieldSubmitted: onSubmit,
onChanged: onChange,
onTap: onTap,
validator: validate,
decoration: InputDecoration(
  counterStyle: TextStyle(
    color: defultColor,
  ),
labelText: label,
labelStyle: TextStyle(
  color: defultColor,
),
prefixIcon: Icon(
    prefix,
  color: defultColor,
),
suffixIcon: suffix != null ? IconButton(
    icon: Icon(
  suffix,
      color: defultColor,),
    onPressed: onpress,
): null,
border: OutlineInputBorder(),
),

);

