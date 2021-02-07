class userprofile {
  String Email, Name, aboutus, uid, Photo, city, occupation, phone;

  userprofile(
      {this.Email,
      this.Name,
      this.aboutus,
      this.uid,
      this.Photo,
      this.city,
      this.occupation,
      this.phone});

  factory userprofile.fromDocument(doc) {
    return userprofile(
        Email: doc['Email'],
        Name: doc['Name'],
        aboutus: doc['aboutus'],
        uid: doc['uid'],
        Photo: doc['Photo'],
        city: doc['city'],
        occupation: doc['occupation'],
        phone: doc['phone']);
  }
}
