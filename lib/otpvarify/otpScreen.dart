import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:testbizz/form/formController.dart';

class otpScreen extends GetView<formcontrroller> {
  const otpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Obx(
          ()=> !controller.timeout.value ? Container(
            height: h,
            width: w,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Variify E-mial",
                        style: TextStyle(
                            fontSize: h * .035,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Text(
                        "We sent an OTP at",
                        style: TextStyle(fontSize: h * .025, color: Colors.grey),
                      ),
                      Text(
                        controller.busEmail.text.toString() ?? "",
                        style: TextStyle(fontSize: h * .025, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Confirrmation OTP eexpire in",
                            style: TextStyle(
                                fontSize: h * .025, color: Colors.black),
                          ),
                          Icon(Icons.timer),
                          Obx(
                            ()=> Text(
                            controller.secondsRemaining.value.toString(),
                              style: TextStyle(
                                  fontSize: h * .025, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      OtpTextField(
                        numberOfFields: 6,
                        borderColor: Color(0xFF512DA8),
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {}, // end onSubmit
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Obx(
                        ()=> !controller.varify1.value ? InkWell(
                          onTap: () {
                            controller.varifyotp("1");
                          },
                          child: Container(
                            height: h * .08,
                            margin: EdgeInsets.symmetric(
                                horizontal: w * .1, vertical: h * .01),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(w * .02))),
                            child: Center(
                                child: Text(
                              "Varrify",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ):Container(
                            height: h * .08,
                            margin: EdgeInsets.symmetric(
                                horizontal: w * .1, vertical: h * .01),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(w * .02))),
                            child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                                                  "Varrifid",
                                                                  style: TextStyle(
                                      color: Colors.blue, fontWeight: FontWeight.bold),
                                                                ),SizedBox(width: 8,),
                                                                Icon(Icons.done_outline_rounded,color: Colors.blue,)
                                  ],
                                )),
                          ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Variify Mobile No",
                        style: TextStyle(
                            fontSize: h * .035,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Text(
                        "We sent an OTP at",
                        style: TextStyle(fontSize: h * .025, color: Colors.grey),
                      ),
                      Text(
                        controller.moNo.text.toString() ?? "",
                        style: TextStyle(fontSize: h * .025, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Confirrmation OTP eexpire in",
                            style: TextStyle(
                                fontSize: h * .025, color: Colors.black),
                          ),
                          Icon(Icons.timer),
                          Obx(
                            ()=> Text(
                            controller.secondsRemaining.value.toString(),
                              style: TextStyle(
                                  fontSize: h * .025, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      OtpTextField(
                        numberOfFields: 6,
                        borderColor: Color(0xFF512DA8),
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {}, // end onSubmit
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Obx(
                        ()=> !controller.varify2.value? InkWell(
                          onTap: () {
                            controller.varifyotp("1");
                          },
                          child: Container(
                            height: h * .08,
                            margin: EdgeInsets.symmetric(
                                horizontal: w * .1, vertical: h * .01),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(w * .02))),
                            child: Center(
                                child: Text(
                              "Varrify",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ):Container(
                            height: h * .08,
                            margin: EdgeInsets.symmetric(
                                horizontal: w * .1, vertical: h * .01),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(w * .02))),
                            child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                                                  "Varrifid",
                                                                  style: TextStyle(
                                      color: Colors.blue, fontWeight: FontWeight.bold),
                                                                ),SizedBox(width: 8,),
                                                                Icon(Icons.done_outline_rounded,color: Colors.blue,)
                                  ],
                                )),
                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ):InkWell(onTap: (){
            Get.back();
          }, child: Center(child:  Text("Time Out \n Tap to retry",textAlign: TextAlign.center,))),
        ),
      ),
    );
  }
}
