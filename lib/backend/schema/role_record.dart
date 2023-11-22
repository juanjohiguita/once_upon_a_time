import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoleRecord extends FirestoreRecord {
  RoleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "role_id" field.
  int? _roleId;
  int get roleId => _roleId ?? 0;
  bool hasRoleId() => _roleId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _roleId = castToType<int>(snapshotData['role_id']);
    _name = snapshotData['name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('role');

  static Stream<RoleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoleRecord.fromSnapshot(s));

  static Future<RoleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoleRecord.fromSnapshot(s));

  static RoleRecord fromSnapshot(DocumentSnapshot snapshot) => RoleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoleRecordData({
  int? roleId,
  String? name,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'role_id': roleId,
      'name': name,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoleRecordDocumentEquality implements Equality<RoleRecord> {
  const RoleRecordDocumentEquality();

  @override
  bool equals(RoleRecord? e1, RoleRecord? e2) {
    return e1?.roleId == e2?.roleId &&
        e1?.name == e2?.name &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(RoleRecord? e) =>
      const ListEquality().hash([e?.roleId, e?.name, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is RoleRecord;
}
