import 'package:cloud_firestore/cloud_firestore.dart';

class Posts {
  final String uid;
  final String username;
  final String description;
  final String postUrl;
  final String photoUrl;
  final String postId;
  final dynamic datePublished;
  final List<dynamic> likes;

  Posts({
    required this.uid,
    required this.username,
    required this.description,
    required this.postUrl,
    required this.photoUrl,
    required this.postId,
    required this.datePublished,
    required this.likes,
  });

  static Posts fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Posts(
      uid: snapshot['uid'],
      username: snapshot['username'],
      description: snapshot['description'],
      postUrl: snapshot['postUrl'],
      photoUrl: snapshot['photoUrl'],
      postId: snapshot['postId'],
      datePublished: snapshot['datePublished'],
      likes: snapshot['likes'],
    );
  }

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'username': username,
        'description': description,
        'postUrl': postUrl,
        'photoUrl': photoUrl,
        'postId': postId,
        'datePublished': datePublished,
        'likes': likes,
      };
}
