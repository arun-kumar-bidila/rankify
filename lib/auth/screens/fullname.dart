import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rankify/auth/screens/examcategory.dart';
import 'package:rankify/common/widgets/custom_button.dart';
import 'package:rankify/common/widgets/custom_textfield.dart';
import 'package:rankify/constants/global_variables.dart';
// import 'package:rankify/utils/screen_size.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _nameFormKey = GlobalKey<FormState>();
    TextEditingController nameController = TextEditingController();
    // final screen = ScreenSize(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        // title: Text(
        //   "Sign up",
        //   style: TextStyle(
        //     fontSize: 20,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: KeyboardVisibilityBuilder(
        builder: (context, isKeyboardVisible) {
          return Padding(
            padding: EdgeInsets.only(top: 40.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if(isKeyboardVisible)...[
                  Image.asset(
                  "assets/R1.png",
                  // width: screen.Width * 0.8,
                  // height: screen.Height * 0.2,
                  height: 100.h,
                  width: 300.w,
                ),
                ],
                if(!isKeyboardVisible)...[
                  Image.asset(
                  "assets/R1.png",
                  // width: screen.Width * 0.8,
                  // height: screen.Height * 0.2,
                  height: 250.h,
                  width: 300.w,
                ),
                ],
                Expanded(
                  child: Container(
                    // height: screen.Height*0.5,
                    padding: EdgeInsets.all(16.r),
                    margin: EdgeInsets.only(top: 30.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.r),
                        topRight: Radius.circular(40.r),
                      ),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black12,
                      //     blurRadius: 2,
                      //     offset: Offset(4, 0),
                      //   )
                      // ],
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(8.r),
                        child: Column(
                          children: [
                            //     Text(
                            //   "Full name",
                            //   style: TextStyle(fontSize: 16),
                            // ),
                            Form(
                              key: _nameFormKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Enter Your Full Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    // height: screen.Height * (10 / 812),
                                    height: 10.h,
                                  ),
                                  Text("Please enter your full name"),
                                  SizedBox(
                                    // height: screen.Height * (25 / 812),
                                    height: 25.h,
                                  ),
                                  CustomTextfield(
                                      hintText: "Enter your Full Name",
                                      // label: "Mobile Number",
                                      controller: nameController,
                                      keyboardType: TextInputType.name,)
                                ],
                              ),
                            ),
                            SizedBox(
                              // height: screen.Height * (20 / 812),
                              height: 25.h,
                            ),
                            CustomButton(
                                text: "Continue",
                                onTap: () => {
                                      if (_nameFormKey.currentState!.validate())
                                        {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Examcategory()))
                                        }
                                    },
                                color: GlobalVariables.buttonColor,
                                textColor: GlobalVariables.textWhite),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
