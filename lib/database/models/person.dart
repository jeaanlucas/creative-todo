import 'package:creativetodo/database/models/dob.dart';
import 'package:creativetodo/database/models/name.dart';
import 'package:creativetodo/database/models/picture.dart';

class Person {
  String gender;
  Name name;
  String email;
  Dob dob;
  String phone;
  String cell;
  Picture picture;
  String nat;

  Person({
    this.gender,
    this.name,
    this.email,
    this.dob,
    this.phone,
    this.cell,
    this.picture,
    this.nat,
  });

  Person.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    email = json['email'];
    dob = json['dob'] != null ? new Dob.fromJson(json['dob']) : null;
    phone = json['phone'];
    cell = json['cell'];
    picture =
        json['picture'] != null ? new Picture.fromJson(json['picture']) : null;
    nat = json['nat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    if (this.name != null) {
      data['name'] = this.name.toJson();
    }
    data['email'] = this.email;
    if (this.dob != null) {
      data['dob'] = this.dob.toJson();
    }
    data['phone'] = this.phone;
    data['cell'] = this.cell;
    if (this.picture != null) {
      data['picture'] = this.picture.toJson();
    }
    data['nat'] = this.nat;
    return data;
  }
}
