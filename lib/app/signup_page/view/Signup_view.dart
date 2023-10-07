import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ui_degine_1/app/signup_page/controller/Signup_controller.dart';
import 'package:ui_degine_1/utils/kImagepath.dart';

import '../../../utils/colors.dart';
import '../../../utils/kAppsize.dart';
import '../../../utils/kText.dart';
import '../../../widgets/Textformfiled/Ktextfromfield.dart';
import '../../Signin_page/view/signin_view.dart';

class SignUp extends GetView<SignUpController> {
  const SignUp({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Form(
           
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  KImagePath.main,
                  width: KAppSize.getwidth(context: context, size: 30),
                  height: KAppSize.getheight(context: context, size: 20),
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                KText(
                  titleText: 'Register!',
                  fontsize: 25,
                  color: Color.fromRGBO(1, 240, 9, 1),
                ),
                SizedBox(
                  height: 5,
                ),
                KText(
                  titleText: "Create your new account ",
                  fontsize: 16,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                KTextFromField(
                  prefixIcon: Icon(Icons.person),
                  hintext: "Enter Your Full Name",
                  label: Text("Full Name"),
                ),
                SizedBox(
                  height: 15,
                ),
                KTextFromField(
                  prefixIcon: Icon(Icons.email),
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
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      // formKey.currentState?.validate();
                      Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ));
                    },
                    child: Text(
                      "SignUp",
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
                    Text("Already have a account!"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ));
                      },
                      child: KText(
                        titleText: "Signin",
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

  
