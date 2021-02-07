import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});

  Future<void> addData(view) async {
    FirebaseFirestore.instance.collection("videoView").add(view).catchError((e) {
      print(e);
    });
  }

  getData() async {
    return await Firestore.instance.collection("users").snapshots();
  }

  Future<void> addQuizData(Map quizData, String quizId) async {
    await FirebaseFirestore.instance
        .collection("Quiz")
        .doc(quizId)
        .set(quizData)
        .catchError((e) {
      print(e);
    });
  }

  Future<void> addQuestionData(quizData, String quizId) async {
    await FirebaseFirestore.instance
        .collection("Quiz")
        .doc(quizId)
        .collection("QNA")
        .add(quizData)
        .catchError((e) {
      print(e);
    });
  }

  getQuizData() async {
    return await FirebaseFirestore.instance.collection("Quiz").get();
  }

  getQuestionData(String quizId) async{
    return await FirebaseFirestore.instance
        .collection("Quiz")
        .doc(quizId)
        .collection("QNA")
        .get();
  }

  Future<QuerySnapshot> View() async {
    return await FirebaseFirestore.instance
        .collection('videoView').where('upvote', isEqualTo: 0).get();
  }

  Future<QuerySnapshot> Lead() async {
    return await FirebaseFirestore.instance
        .collection('videoView').where('upvote', isEqualTo: 1).get();
  }

  Future<QuerySnapshot> videoLink() async {
    return await FirebaseFirestore.instance.collection('VideoLink').where('video', isNotEqualTo: null).get();
  }

  updateView(sDoc, newValues) {
    return FirebaseFirestore.instance
        .collection('videoView')
        .doc(sDoc)
        .update(newValues)
        .catchError((e) {
      print(e);
    });
  }
}
