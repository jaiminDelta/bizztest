import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:testbizz/otpvarify/otpScreen.dart';

class formcontrroller extends GetxController {
  Rx<RxStatus> formStatus = RxStatus.loading().obs;
  File? file;
  List<String> cntry = [
    'India',
  ];
  List<String> mType = ['Individual'];
  List<String> currrncy = [
    'ruppeey',
  ];
  List<String> bnk = ['state bank of india'];
  TextEditingController actypee = TextEditingController();
  TextEditingController busName = TextEditingController();
  TextEditingController busEmail = TextEditingController();
  TextEditingController moNo = TextEditingController();
  TextEditingController panNo = TextEditingController();
  TextEditingController gstNo = TextEditingController();
  TextEditingController msmeNo = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController acno = TextEditingController();
  TextEditingController tanNo = TextEditingController();
  TextEditingController passporrtNo = TextEditingController();
  TextEditingController discp = TextEditingController();
  TextEditingController filee = TextEditingController();
  TextEditingController iffc = TextEditingController();
  String? dropdownValue;
  String? dropdownValue2;
  String? selectedCurr;
  String? selectedBank;
  RxBool Ischeeck = false.obs;
  @override
  void onInit() {
    dropdownValue = cntry[0];
    dropdownValue2 = mType[0];

    // TODO: implement onInit
    super.onInit();
  }
  //  TextEditingController busNamee = TextEditingController();
  //   TextEditingController busNamee = TextEditingController();

  void picFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      file = File(result.files.single.path!);
      filee.text = file?.path ?? "";
    } else {
      // User canceled the picker
    }
  }

  void submit(BuildContext context) async {
    try {
      print(dropdownValue2);
      print("object");
      var res = await http.post(
          Uri.parse(
              "https://bitzeesx.com/api/user_p2p/user/add_merchant_account/U2A3F2FB066"),
          headers: {
            //"Access-Control-Allow-Origin": "*",
            "Content-type": "application/json",
            "x-api-key":
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiVTJBM0YyRkIwNjYiLCJsYXRlc3RfZGV2aWNlX3Rva2VuIjoiZmZvV0VVZGtYSks5TUsxMU9Udm9reTpBUEE5MWJITDJhSURocHJnM2Mtc1Rqd0NFYU9ySHlLY3hWMFRSX3ZiVnpMLTZ5S2ZBWXFXdjdDeWh6MXFDUWJRclpQdzJ0cFU0dko4LUIyRWw3Tmg1Q3hVb1gzdy12LU1peXlCeE5rUGZUYU9aWlBDZ2haXzR2cHU2OFl0d1ZheDlZZ2ZBQ1JrVFhUbSIsImlhdCI6MTcxMzg3NTQ2NywiZXhwIjoxNzEzOTE4NjY3fQ.HNn1GJMTvUhdBMczh6D3-Um0MFLFnFQioVjEgMU9U4o"
          },
          body: jsonEncode({
            "account_type": dropdownValue2,
            "firm_name": busName.text.toString(),
            "bank_name": selectedBank,
            "bank_id": "SBI0002",
            "account_number": acno.text.toString(),
            "ifsc_code": iffc.text.toString(),
            "account_holder_name": "mr abdudie",
            "address": address.text.toString(),
            "state": "maharastra",
            "pincode": pincode.text.toString(),
            "business_mobile_number": moNo.text.toString(),
            "business_email_id": "ajay.bitzees@gmail.com",
            "pan_card_number": panNo.text.toString(),
            "gst_number": gstNo.text.toString(),
            "msme_number": msmeNo.text.toString(),
            "business_discription": "time for company",
            "tan_number": tanNo.text.toString(),
            // "acknowledgement_number": "",
            // "passport_number": passporrtNo.text.toString(),
            "country": "India",
            "itr_pdf": "pdf",
            //  "coordinate": ({"latitude": 25, "longitude": 38}.toString()),
            "ip": "192.8.29.207",
            "physical_path": "/login",
            "two_step": "1",
            "step": "1"
          }));
      if (res.statusCode == 200) {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => otpScreen()));
      }
    } catch (e) {
      print("object1");
      print(e);
    }
  }

  Future<void> sendPDFFile(String filePath) async {
    formStatus.value = RxStatus.loading();
    // Replace 'http://your-api-endpoint' with your actual API endpoint
    try {
      var url = Uri.parse('http://your-api-endpoint');

      // Create a multipart request
      var request = http.MultipartRequest('POST', url);

      // Add PDF file to the request
      var file = await http.MultipartFile.fromPath('itr_pdf', filePath);
      request.headers.addAll({"x-api-key": "h"});
      request.fields["account_type"] = actypee.text.toString();
      request.fields["firm_name"] = busName.text.toString();
      request.fields["business_email_id"] = busEmail.text.toString();
      request.fields["business_mobile_number"] = moNo.text.toString();
      request.fields["account_type"] = panNo.text.toString();
      request.fields["gst_number"] = gstNo.text.toString();
      request.fields["msme_number"] = msmeNo.text.toString();
      request.fields["address"] = address.text.toString();
      request.fields["pincode"] = pincode.text.toString();
      request.fields["tan_number"] = tanNo.text.toString();
      request.fields["passport_number"] = tanNo.text.toString();
      request.fields["firm_name"] = passporrtNo.text.toString();
      request.fields["state"] = state.text.toString();
      request.fields["firm_name"] = busEmail.text.toString();

      request.files.add(file);

      // Send the request
      var response = await request.send();

      // Check the response
      if (response.statusCode == 200) {
        print('PDF file sent successfully');
      } else {
        print('Failed to send PDF file. Status code: ${response.statusCode}');
      }
    } catch (e) {}
  }

  String vCode = "";

  void varifyotp(String type) async {
    try {
      print("calld");
      var res = await http.post(
          Uri.parse("https://bitzeesx.com/api/user_onboarding/user/verify_otp"),
          headers: {
            "Access-Control-Allow-Origin": "*",
            'Content-type': 'application/json',
            "x-api-key":
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiVTJBM0YyRkIwNjYiLCJsYXRlc3RfZGV2aWNlX3Rva2VuIjoiZmZvV0VVZGtYSks5TUsxMU9Udm9reTpBUEE5MWJITDJhSURocHJnM2Mtc1Rqd0NFYU9ySHlLY3hWMFRSX3ZiVnpMLTZ5S2ZBWXFXdjdDeWh6MXFDUWJRclpQdzJ0cFU0dko4LUIyRWw3Tmg1Q3hVb1gzdy12LU1peXlCeE5rUGZUYU9aWlBDZ2haXzR2cHU2OFl0d1ZheDlZZ2ZBQ1JrVFhUbSIsImlhdCI6MTcxMzg3NTQ2NywiZXhwIjoxNzEzOTE4NjY3fQ.HNn1GJMTvUhdBMczh6D3-Um0MFLFnFQioVjEgMU9U4o"
          },
          body: jsonEncode({
            "mobile": moNo.text.toString(),
            "email": busEmail.text.toString(),
            "user_id": "U2A3F2FB066",
            "otp": vCode,
            "otp_type": type,
            "activity_type": "30",
            "otp_second": vCode
          }));
      print(res.statusCode);
    } catch (e) {
      print("calldq");
      print(e.toString());
    }
  }
}


// account_type:Individual
// firm_name:tata motors
// bank_name:state bank of india
// bank_id:SBI0002
// account_number:31740857847
// ifsc_code:sbin0009003
// account_holder_name: mr abdudie
// address: hinjewadi phase 2
// state: maharastra
// pincode: 411057
// business_mobile_number:8888613869
// business_email_id:ajay.bitzees@gmail.com
// pan_card_number:BNZPM2501F
// gst_number:123456654312345
// msme_number:1111111111
// business_discription:time for company
// tan_number:
// acknowledgement_number:
// passport_number:
// country:india
// itr_pdf:pdf
// coordinate:{latitude : 25longitude : 38}
// ip:192.8.29.207
// physical_path:/login
// two_step:1
// step:1 