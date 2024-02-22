class RumahModel{
  final int? id;
  final String? no_rumah;
  final String? createdAt;

  RumahModel({
  this.id,
  required this.no_rumah,
  this.createdAt,
  });

  factory RumahModel.fromMap(Map<String, dynamic> data) {return RumahModel(
  id: data['id'],
  no_rumah: data['no_rumah'],
  createdAt: data['createdAt'],
  );
}

Map<String, dynamic> toMap() => {
  'id': id,
  'no_rumah': no_rumah,
  'createdAt': createdAt,
};
Map<String, dynamic> toMapInsert() => {
  'no_rumah': no_rumah,
  'createdAt': createdAt,
};
Map<String, dynamic> toMapUpdate() => {
  'no_rumah': no_rumah,
  'createdAt': createdAt,
};
Map<String, dynamic> toMapDelete() => {
  'no_rumah': no_rumah,
  'createdAt': createdAt,
};
}