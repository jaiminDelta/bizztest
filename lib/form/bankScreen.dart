import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:testbizz/form/formController.dart';

class bankScreen extends GetView<formcontrroller> {
  const bankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text("Add Bank Detail"),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(h * .01),
          height: h,
          width: w,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: h * .03,
                      ),
                      Text("Select Currency"),
                      SizedBox(
                        height: h * .01,
                      ),
                      Container(
                          height: h * .07,
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                            value: controller.selectedCurr,
                            onChanged: (String? newValue) {},
                            items: controller.currrncy
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Center(child: Text(value)),
                              );
                            }).toList(),
                          )),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text("Select Bank Name"),
                      SizedBox(
                        height: h * .01,
                      ),
                      Container(
                          height: h * .07,
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                            value: controller.selectedBank,
                            onChanged: (String? newValue) {},
                            items: controller.bnk
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Center(child: Text(value)),
                              );
                            }).toList(),
                          )),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text("Account Number"),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: h * .065,
                        child: TextFormField(
                          controller: controller.acno,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text("Confirm Account Number"),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: h * .065,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text("IFFC code"),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            width: w / 1.5,
                            height: h * .070,
                            child: TextFormField(
                              controller: controller.iffc,
                              decoration: InputDecoration(
                                  hintText: "Enter IFFC",
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder()),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                            onTap: () {
                              controller.picFile();
                            },
                            child: Container(
                              height: h * .065,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(w * .02))),
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: w * .07),
                                child: Center(
                                    child: Text(
                                  "Varify",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Text("Account holder name"),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: h * .065,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder()),
                        ),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              controller.Ischeeck.value =
                                  !controller.Ischeeck.value;
                            },
                            child: Container(
                              height: h * .04,
                              width: h * .04,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.7),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(h * .01))),
                              child: Obx(() => controller.Ischeeck.value
                                  ? Icon(Icons.done)
                                  : SizedBox()),
                            ),
                          ),
                          SizedBox(
                            width: h * .03,
                          ),
                          Text("I confirm that this account belongs to me ")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (controller.Ischeeck.value) {
                    controller.submit(context);
                  }
                },
                child: Container(
                  child: Center(
                    child: Obx(
                      () => Container(
                        height: h * .08,
                        margin: EdgeInsets.symmetric(
                            horizontal: w * .1, vertical: h * .01),
                        decoration: BoxDecoration(
                            color: controller.Ischeeck.value
                                ? Colors.blue
                                : Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(w * .02))),
                        child: Center(
                            child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
