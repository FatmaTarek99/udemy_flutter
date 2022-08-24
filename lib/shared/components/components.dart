import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 10.0,
  @required Function function,
  @required String text,
})=> Container(
  width: width,
height: 40.0,
    child: MaterialButton(
    onPressed: function,
    child: Text(
      isUpperCase? text.toUpperCase() : text,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius,),
    color: background,
  ),
);

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  @required Function validate,
  @required String hint,
  @required IconData prefix,
  bool isPassword = false,
  IconData suffix,
  Function suffixOnPressed,



})=> TextFormField(
  validator: validate,
  controller:controller ,
  obscureText: isPassword,
  keyboardType: type,
  decoration: InputDecoration(
    hintText: hint,
    border: OutlineInputBorder(),
    prefixIcon: Icon(
      prefix,
    ),
    suffixIcon: suffix != null ? IconButton(
      onPressed: suffixOnPressed,
      icon: Icon(
          suffix
      ),
    ) : null,


  ),
);