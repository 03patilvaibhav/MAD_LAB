import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

Future<void> copyData() async {
  final firestore = FirebaseFirestore.instance;
  final realtime = FirebaseDatabase.instance.ref().child('data');

  final querySnapshot = await firestore.collection('users').get();
  for (final doc in querySnapshot.docs) {
    await realtime.child(doc.id).set(doc.data());
  }

  print('Data copied successfully!');
}
