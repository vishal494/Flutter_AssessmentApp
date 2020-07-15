class Model {
  String firstName;
  String lastName;
  String email;
  String password;
  String phoneNumber;
  String currentCTC;
  String expectedCTC;
  String currentEmployer;
  String noticePeriod;
  String knowAboutUs;
  String aboutThem;

  String getfirstName() {
    return firstName;
  }

  String setFirstName(String firstname) {
    this.firstName = firstname;
  }

//  Model(
//      {this.firstName,
//      this.lastName,
//      this.email,
//      this.password,
//      this.phoneNumber,
//      this.currentCTC,
//      this.expectedCTC,
//      this.currentEmployer,
//      this.noticePeriod,
//      this.knowAboutUs,
//      this.aboutThem});

}

final Pattern namePattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
final Pattern emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
final Pattern phonePattern =
    r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$';
