class Video {

  String video;

  Video(
      {
        this.video
      });

  factory Video.fromDocument(doc) {
    return Video(
        video: doc['video']);
  }
}
