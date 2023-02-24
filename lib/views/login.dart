import 'dart:ui';

//import 'package:firstapp/views/my_textfield.dart';
import 'package:firstapp/models/my_textfield.dart';
import 'package:firstapp/views/widgets.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/models/my_button.dart';


import '../models/square_tile.dart';

class LoginScreen extends StatelessWidget {
  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

// sign user in
  void signUserIn(){}

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var usernameController2 = usernameController;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
        
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(
                  height: 50,
                ),
                //welcome back
                const Text(
                  'Welcome back you\'ve been missed',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const MyTextField(
                  controller: null,
                  hintText: 'username',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
        
                const MyTextField(
                  controller: null,
                  hintText: 'password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 15,
                ),
        
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                 MyButton(
                  onTap: signUserIn,
                ),
                const SizedBox(height: 40),
        
               //or continue
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0),
                child: Row(
                  children: [
                    Expanded(child:Divider(
                  thickness: 1 ,
                  color: Colors.grey[400],
                ),),
        
               
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                  child: Text('Or continue with'),
                ),
                Expanded(child:Divider(
                  thickness: 1 ,
                  color: Colors.grey[400],
                ),),
                  ],
                ),
              ),
              const SizedBox(height: 40),
        
              //Google and apple icons
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath:'lib/images/google.png'),
        
                  const SizedBox(width: 25),
        
                  SquareTile(imagePath: 'lib/images/apple.png')
                ],
               ),
        
               const SizedBox(height: 40),
        
               //NOt a member register now
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Not a member?'),
                   const SizedBox(width: 4,),
                   Text(
                    'Register now',
                    style:TextStyle(color:Colors.blueAccent,fontWeight: FontWeight.bold) ,)
                 ],
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}










































//       child: Scaffold(
//         body: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/images/headphones.png',
//                 width: 150,
//                 height: 150,
//                 fit: BoxFit.contain,
//               ),
//               myTextWidget("Enter userna"),
//               TextField(),
//               myTextWidget('Enter password'),
//               TextField(),
//               myButtonWidget('Login', loginClicked),
//               myButtonWidget('Register', registerClicked)
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void loginClicked() {
//     print("Login clicked");
//   }

//   void registerClicked() {
//     print("Register clicked");
//   }
// }