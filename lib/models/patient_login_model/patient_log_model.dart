class PatientLogin {
  String? message;
  String? token;
  User? user;

  PatientLogin({this.message, this.token, this.user});

  PatientLogin.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? email;
  String? gender;
  String? phone;
  String? date;
  int? age;
  String? ssn;
  String? address;
  Null? location;
  Null? image;
  Null? doctorId;

  User(
      {this.id,
        this.name,
        this.email,
        this.gender,
        this.phone,
        this.date,
        this.age,
        this.ssn,
        this.address,
        this.location,
        this.image,
        this.doctorId});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gender = json['Gender'];
    phone = json['phone'];
    date = json['date'];
    age = json['age'];
    ssn = json['ssn'];
    address = json['address'];
    location = json['location'];
    image = json['image'];
    doctorId = json['doctor_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['Gender'] = this.gender;
    data['phone'] = this.phone;
    data['date'] = this.date;
    data['age'] = this.age;
    data['ssn'] = this.ssn;
    data['address'] = this.address;
    data['location'] = this.location;
    data['image'] = this.image;
    data['doctor_id'] = this.doctorId;
    return data;
  }
}