class UserModel {
  UserModel({
    required this.success,
    required this.message,
    required this.data,
  });

  late final bool success;
  late final String message;
  late final Data data;

  UserModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = Data.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['message'] = message;
    _data['data'] = data.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.name,
    required this.emailId,
    required this.role,
    required this.mobileNo,
    required this.isPublicMobile,
    required this.assistant,
    required this.isContactPulbic,
    required this.paymentOptions,
    required this.hobbies,
    required this.skills,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    // required this._V,
  });

  late final String name;
  late final String emailId;
  late final String role;
  late final String mobileNo;
  late final bool isPublicMobile;
  late final Assistant assistant;
  late final bool isContactPulbic;
  late final List<dynamic> paymentOptions;
  late final List<dynamic> hobbies;
  late final List<dynamic> skills;
  late final String id;
  late final String createdAt;
  late final String updatedAt;
  late final int _V;

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name']??"";
    emailId = json['emailId']??"";
    role = json['role']??"";
    mobileNo = json['mobileNo']??"";
    isPublicMobile = json['isPublicMobile']??false;
    // assistant = Assistant.fromJson(json['assistant']??{});
    isContactPulbic = json['isContactPulbic']??false;
    paymentOptions = List.castFrom<dynamic, dynamic>(json['paymentOptions']??[]);
    hobbies = List.castFrom<dynamic, dynamic>(json['hobbies']??[]);
    skills = List.castFrom<dynamic, dynamic>(json['skills']??[]);
    id = json['_id']??"";
    createdAt = json['createdAt']??"";
    updatedAt = json['updatedAt']??"";
    _V = json['__v']??0;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['emailId'] = emailId;
    _data['role'] = role;
    _data['mobileNo'] = mobileNo;
    _data['isPublicMobile'] = isPublicMobile;
    _data['assistant'] = assistant.toJson();
    _data['isContactPulbic'] = isContactPulbic;
    _data['paymentOptions'] = paymentOptions;
    _data['hobbies'] = hobbies;
    _data['skills'] = skills;
    _data['_id'] = id;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['__v'] = _V;
    return _data;
  }
}

class Assistant {
  Assistant({
    required this.mobileNo,
  });

  late final String mobileNo;

  Assistant.fromJson(Map<String, dynamic> json) {
    mobileNo = json['mobileNo']??"";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mobileNo'] = mobileNo;
    return _data;
  }
}
