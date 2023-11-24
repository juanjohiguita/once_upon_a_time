import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultAPIRecord extends FirestoreRecord {
  ResultAPIRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_user" field.
  String? _idUser;
  String get idUser => _idUser ?? '';
  bool hasIdUser() => _idUser != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "env" field.
  String? _env;
  String get env => _env ?? '';
  bool hasEnv() => _env != null;

  void _initializeFields() {
    _idUser = snapshotData['id_user'] as String?;
    _text = snapshotData['text'] as String?;
    _title = snapshotData['title'] as String?;
    _env = snapshotData['env'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resultAPI');

  static Stream<ResultAPIRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResultAPIRecord.fromSnapshot(s));

  static Future<ResultAPIRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResultAPIRecord.fromSnapshot(s));

  static ResultAPIRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResultAPIRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResultAPIRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResultAPIRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResultAPIRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResultAPIRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResultAPIRecordData({
  String? idUser,
  String? text,
  String? title,
  String? env,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_user': idUser,
      'text': text,
      'title': title,
      'env': env,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResultAPIRecordDocumentEquality implements Equality<ResultAPIRecord> {
  const ResultAPIRecordDocumentEquality();

  @override
  bool equals(ResultAPIRecord? e1, ResultAPIRecord? e2) {
    return e1?.idUser == e2?.idUser &&
        e1?.text == e2?.text &&
        e1?.title == e2?.title &&
        e1?.env == e2?.env;
  }

  @override
  int hash(ResultAPIRecord? e) =>
      const ListEquality().hash([e?.idUser, e?.text, e?.title, e?.env]);

  @override
  bool isValidKey(Object? o) => o is ResultAPIRecord;
}
