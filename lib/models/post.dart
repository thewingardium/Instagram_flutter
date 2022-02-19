import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final String postId;
  final String username;
  final datePublished;
  final String postUrl;
  final String profImage;
  final likes;

  const Post(
      {required this.username,
      required this.uid,
      required this.postId,
      required this.description,
      required this.datePublished,
      required this.postUrl,
      required this.likes,
      required this.profImage});

  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Post(
      description: snapshot["email"],
      uid: snapshot["uid"],
      username: snapshot["username"],
      postUrl: snapshot["postUrl"],
      postId: snapshot["postId"],
      datePublished: snapshot["datePublished"],
      profImage: snapshot["profImage"],
      likes: snapshot["likes"],
    );
  }

  Map<String, dynamic> toJson() => {
        "desciption": description,
        "uid": uid,
        "username": username,
        "postId": postId,
        "datePublished": datePublished,
        "profImage": profImage,
        "likes": likes,
        "postUrl": postUrl,
      };
}
