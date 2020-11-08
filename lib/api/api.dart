class PatientRecords {
  int id;
  final String name;
  final String age;
  final String doctorName;
  final String problem;
  final String medication;

  PatientRecords(
      {this.id,
      this.name,
      this.age,
      this.doctorName,
      this.problem,
      this.medication});

  factory PatientRecords.fromJson(Map<String, dynamic> json) {
    return PatientRecords(
        id: json['id'],
        name: json['name'],
        age: json['age'],
        doctorName: json['doctor'],
        problem: json['problem'],
        medication: json['medication']);
  }
  dynamic toJson() => {
        'id': id,
        'age': age,
        'name': name,
        'doctor': doctorName,
        'medication': medication,
        'problem': problem
      };
}
