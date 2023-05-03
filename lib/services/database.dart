import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:otaku/models/user.dart';
import 'package:rxdart/transformers.dart';

class DatabaseService {
  final String uid;

  DatabaseService({
    required this.uid,
  });

  Stream<List<String>> likedAnimes() {
    var _ref = FirebaseFirestore.instance.collection("users").doc(uid);

    return _ref.snapshots().map(
      (doc) {
        var temp = UserModel.fromJson(
          doc.data() ?? Map.from({}),
        ).animesLiked;
        print("temp");
        print(temp);
        return temp;
      },
    );
  }
}
