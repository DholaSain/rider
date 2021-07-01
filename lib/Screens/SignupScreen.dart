import 'package:flutter/material.dart';
import 'package:rider/Screens/SigninScreen.dart';
import 'package:rider/Utils/Constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundLightColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              SvgPicture.asset(
                'assets/images/rider.svg',
                width: 300,
              ),
              SizedBox(height: 20),
              Text(
                'Rider Registration',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Brand Bold",
                ),
              ),
              SizedBox(height: 1.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.person,
                            color: kGreenColor,
                          ),
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kGreenColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.phone,
                            color: kGreenColor,
                          ),
                          hintText: 'Enter Phone Number',
                          hintStyle: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kGreenColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.email,
                            color: kGreenColor,
                          ),
                          hintText: 'Enter Your Email',
                          hintStyle: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kGreenColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.lock,
                            color: kGreenColor,
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kGreenColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    MaterialButton(
                      height: 55.0,
                      color: kGreenColor,
                      onPressed: () {
                        //ToDo: Login Function Here
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Text(
                          'SIGNUP',
                          style: TextStyle(
                            fontSize: 20,
                            color: kBackgroundLightColor,
                            fontFamily: "Brand Bold",
                            letterSpacing: 5,
                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => LoginScreen()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: kGreenColor, fontFamily: "Brand Bold"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            //ToDo: Google Signin
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: kGreenColor,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              "assets/images/google.svg",
                              height: 20,
                              width: 20,
                              // color: kDarkColor,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            //ToDo: Facebook Signin
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: kGreenColor,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(
                              "assets/images/facebook.svg",
                              height: 20,
                              width: 20,
                              // color: kDarkColor,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
