import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../utils/app_url.dart';
import '../utils/constants.dart';
import '../view/home_screen.dart';

class ApiServices {
  Future getAllUsers(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.get(Uri.parse(AppUrl.baseUrl + "user/all"), headers: {
      'Content-Type': 'application/json; charset=UTF-8',
      HttpHeaders.authorizationHeader: "Bearer " + token,
    });
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future updateUser(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.patch(Uri.parse(AppUrl.baseUrl + "user/"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode(parameter));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future updateAssistant(
      String emailId, int mobileNo, String assistantName) async {
    Map mapresponse = {};
    http.Response response;
    // print(parameter);
    response = await http.patch(Uri.parse(AppUrl.baseUrl + "user/assistant"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode({
          "assistant": [
            {"emailId": emailId, "mobileNo": mobileNo, "name": assistantName}
          ]
        }));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future updateSocialLinks(String instaLink, String fbLink) async {
    Map mapresponse = {};
    http.Response response;
    response = await http.patch(Uri.parse(AppUrl.baseUrl + "user/assistant"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode({
          "socialMediaLinks": {"instagram": instaLink, "facebook": fbLink}
        }));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future createPaymentOption(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.post(Uri.parse(AppUrl.baseUrl + "user/paymentOption"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode(parameter));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future updatePaymentOption(String bankName,String accNo,String accName,String ifsc) async {
    Map mapresponse = {};
    http.Response response;
    // print(parameter);
    response = await http.post(
        Uri.parse(
            AppUrl.baseUrl + "user/paymentOptions/635797fe434a328dcde87b21"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode({
          "type": "accNo",
          "accNo": {
            "bankName": bankName,
            "accNo": accNo,
            "accName": accName,
            "ifsc": ifsc
          },
          "isPrimary": true
        }));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future createUser(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.post(Uri.parse(AppUrl.baseUrl + "user"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode(parameter));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future uploadDocumentFiles(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.post(Uri.parse(AppUrl.baseUrl + "user/uploadfiles"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode(parameter));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future updateLocation(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response =
        await http.post(Uri.parse(AppUrl.baseUrl + "user/updatelocation"),
            headers: {
              'Content-Type': 'application/json; charset=UTF-8',
              HttpHeaders.authorizationHeader: "Bearer " + token,
            },
            body: jsonEncode(parameter));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future addComment(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.post(
        Uri.parse(
            AppUrl.baseUrl + "comment/classroom/634e90ba95809535da526f60"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode(parameter));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future addReview(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.post(
        Uri.parse(AppUrl.baseUrl + "review/classroom/634e90ba95809535da526f60"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode(parameter));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future createTransaction(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.post(Uri.parse(AppUrl.baseUrl + "transaction"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode(parameter));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future generateCouponCode(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.post(Uri.parse(AppUrl.baseUrl + "couponcode"),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer " + token,
        },
        body: jsonEncode(parameter));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future fetchTeacherOrder(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.get(
      Uri.parse(
          AppUrl.baseUrl + "teacher/orders/classroom/634e90ba95809535da526f60"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer " + token,
      },
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future getAllClassroomForTeacher(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.get(
      Uri.parse(AppUrl.baseUrl + "teacher/634583c1aacec7da768afb05/classrooms"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer " + token,
      },
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future pendingTeacherCreditForClassroom(
      Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.get(
      Uri.parse(
          AppUrl.baseUrl + "teachercredit/classroom/634e90ba95809535da526f60"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer " + token,
      },
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future historyOfSuccessfulOrder(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.get(
      Uri.parse(
          AppUrl.baseUrl + "order/classroom/634e90ba95809535da526f60/success"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer " + token,
      },
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future fetchUserOrder(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.get(
      Uri.parse(AppUrl.baseUrl + "order"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer " + token,
      },
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future unredeemedCouponCodeForTransaction(
      Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.get(
      Uri.parse(
          AppUrl.baseUrl + "order/classroom/634e90ba95809535da526f60/pending"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer " + token,
      },
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future autoSuggestion(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.get(
      Uri.parse(AppUrl.baseUrl +
          "autoComplete/autocomplete?input=Noida&sessiontoken=fasdfasw"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer " + token,
      },
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future placeDetails(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.get(
      Uri.parse(AppUrl.baseUrl +
          "autoComplete/detail?place_id=ChIJezVzMaTlDDkRP8B8yDDO_zc"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer " + token,
      },
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }

  Future greetingRequest(Map<String, dynamic> parameter) async {
    Map mapresponse = {};
    http.Response response;
    print(parameter);
    response = await http.get(
      Uri.parse(AppUrl.baseUrl + "greeting"),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer " + token,
      },
    );
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        mapresponse = json.decode(response.body);
      }
    }
    log(mapresponse.toString());
    showToast(response.body.toString());
  }
}
