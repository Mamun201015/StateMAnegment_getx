import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_degine_1/app/Signin_page/controller/Signin_controller.dart';
import 'package:ui_degine_1/app/modules/nav_view/view/nav_view.dart';
import 'package:ui_degine_1/utils/colors.dart';
import 'package:ui_degine_1/utils/kImagepath.dart';
import 'package:ui_degine_1/utils/kText.dart';

import '../../../widgets/Textformfiled/Ktextfromfield.dart';
import '../../signup_page/view/Signup_view.dart';

class SignIn extends GetView<SignInController> {
  const SignIn({super.key});
  
  
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Form(
           
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(KImagePath.signIn),
                
                KText(
                  titleText: 'Welcome Back',
                  fontsize: 30,
                  color: Color.fromRGBO(1, 240, 9, 1),
                ),
                SizedBox(
                  height: 5,
                ),
                KText(
                  titleText: "Login to your existing account ",
                  fontsize: 16,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                KTextFromField(
                  prefixIcon: Icon(Icons.person),
                  hintext: "User Name or Email",
                  label: Text("Use Name or Email"),

                  
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return " field can not be emopty";
                    }
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                KTextFromField(
                  prefixIcon: Icon(Icons.lock),
                  hintext: "Password",
                  label: Text("Password"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return " field can not be emopty";
                    }
                  },
                  
                          
                          ),
                

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style:
                              TextStyle(color: Color.fromRGBO(2, 232, 10, 1)),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      // formKey.currentState?.validate();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Navview(),
                      ));
                    },
                    child: Text(
                      "Signin",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Color.fromARGB(255, 4, 201, 11)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have a account"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: KText(
                        titleText: "Signup",
                        color: Appcolors.green,
                      ),
                    )
                  ],
                )
               
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
