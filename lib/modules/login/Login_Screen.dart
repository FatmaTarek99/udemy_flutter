import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/shared/components/components.dart';
class Login_screen extends StatefulWidget {

  @override
  _Login_screenState createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {

  var emailController = TextEditingController();
  var PasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'E_mail Address',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultFormField(
                    controller: emailController,
                    hint: 'Enter Your Email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (String value)
                    {
                      if(value.isEmpty){
                        return 'email must not be an empty';
                      }
                      return null;
                    }
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultFormField(
                    validate: (String value)
                    {
                      if(value.isEmpty){
                        return 'Password must not be an empty';
                      }
                      return null;
                    },
                    type: TextInputType.visiblePassword,
                    prefix: Icons.lock,
                    hint: 'Enter Your Password',
                    controller: PasswordController,
                    isPassword: isPasswordShow,
                    suffix: isPasswordShow ?  Icons.visibility : Icons.visibility_off,
                    suffixOnPressed: ()
                    {
                      setState(() {
                        isPasswordShow =! isPasswordShow;
                      });
                    }

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'login',
                    function: (){
                      if(formKey.currentState.validate())
                      {
                        print(emailController.text);
                        print(PasswordController.text);
                      }

                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    background: Colors.red,
                      isUpperCase: false,
                      text: 'ReGIster',
                      function: (){
                        print(emailController.text);
                        print(PasswordController.text);
                      }

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Text(
                        'Don\'t have an account?',
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          'Register Now',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );



    // body: Padding(
      //   padding: const EdgeInsets.all(30.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children:
      //     [
      //       Text(
      //         'Login',
      //         style: TextStyle(
      //           letterSpacing: 3.0,
      //           fontSize: 30.0,
      //           fontWeight: FontWeight.bold,
      //           fontStyle: FontStyle.normal,
      //         ),
      //       ),
      //       SizedBox(height: 20.0,),
      //       TextFormField(
      //         onFieldSubmitted: (String value)
      //         {
      //           print(value);
      //         },
      //         onChanged: (value)
      //         {
      //           print(value);
      //         },
      //         keyboardType:TextInputType.emailAddress,
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(20.0),
      //           ),
      //           labelText: 'E_mail',
      //           prefixIcon: Icon(Icons.email_outlined),
      //         ),
      //       ),
      //       SizedBox(height: 10.0,),
      //       TextFormField(
      //         onFieldSubmitted: (String value)
      //         {
      //           print(value);
      //         },
      //         onChanged: (value)
      //         {
      //           print(value);
      //         },
      //         obscureText: true,
      //         keyboardType:TextInputType.visiblePassword,
      //         decoration: InputDecoration(
      //           fillColor: Colors.white,
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(20.0),
      //           ),
      //           labelText: 'Password',
      //           prefixIcon: Icon(Icons.lock),
      //           suffixIcon: Icon(Icons.remove_red_eye_outlined),
      //         ),
      //       ),
      //       SizedBox(height: 10.0,),
      //       defaultButton(
      //         text: 'login',
      //         function: ()
      //         {
      //           print('fatma');
      //         }
      //       ),
      //       Row(
      //         children:
      //         [
      //           Text(
      //             'Don\'t Have An Account?'
      //           ),
      //         ],
      //       ),
      //
      //
      //
      //
      //     ],
      //   ),
      // ),

  }
}
