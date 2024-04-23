import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:testbizz/form/bankScreen.dart';
import 'package:testbizz/form/formController.dart';

class formScreen extends GetView<formcontrroller> {
  formScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        title: Text("Add Merchant details"),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: w * .05, right: w * .05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select Country"),
              Container(
                  margin: EdgeInsets.only(right: w / 3),
                  height: h * .07,
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder()),
                    value: controller.dropdownValue,
                    onChanged: (String? newValue) {},
                    items: controller.cntry
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )),
              SizedBox(
                height: h * .03,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Select Meerchant account typee"),
                        Container(
                            height: h * .07,
                            child: DropdownButtonFormField<String>(
                              validator: (value) =>
                                  value == "" ? 'field required' : null,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder()),
                              value: controller.dropdownValue2,
                              onChanged: (String? newValue) {},
                              items: controller.mType
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            )),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("Business Name"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            validator: (value) =>
                                value == "" ? 'field required' : null,
                            controller: controller.busName,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("Business Email"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            validator: (value) =>
                                value == "" ? 'field required' : null,
                            controller: controller.busEmail,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("Mobile No"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            validator: (value) =>
                                value == "" ? 'field required' : null,
                            controller: controller.moNo,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("PAN card Number"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            validator: (value) =>
                                value == "" ? 'field required' : null,
                            controller: controller.panNo,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("GST Number"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            validator: (value) =>
                                value == "" ? 'field required' : null,
                            controller: controller.gstNo,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("MSME Number"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            validator: (value) =>
                                value == "" ? 'field required' : null,
                            controller: controller.msmeNo,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("Address"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            validator: (value) =>
                                value == "" ? 'field required' : null,
                            controller: controller.address,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("Pincode"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            validator: (value) =>
                                value == "" ? 'field required' : null,
                            controller: controller.pincode,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("Tan Number"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            controller: controller.tanNo,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("Passport Number"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            validator: (value) =>
                                value == "" ? 'field required' : null,
                            controller: controller.passporrtNo,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("ITF pdf for 2 year"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: h * .07,
                          width: w,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 7,
                                child: TextFormField(
                                  // expands: true,
                                  readOnly: true,
                                  controller: controller.filee,
                                  decoration: InputDecoration(
                                      hintText: "Upload attachmennt",
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
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(w * .02))),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: w * .07),
                                    child: Center(
                                        child: Icon(
                                      Icons.attachment,
                                      color: Colors.white,
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                        Center(child: Text("OR ")),
                        SizedBox(
                          height: h * .03,
                        ),
                        Text("Aknowladgement Number"),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: TextFormField(
                            // controller: controller.,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: h * .03,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => bankScreen()));
                  }
                },
                child: Container(
                  child: Center(
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
                        "Save & Next",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
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
