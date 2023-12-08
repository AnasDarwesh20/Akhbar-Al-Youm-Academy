class LectureModel {
  String? lectureCode;

  LectureModel({
    this.lectureCode,
  });

  factory LectureModel.fromJson(Map<String, dynamic> json) => LectureModel(
        lectureCode: json['lectureCode'],
      );

  Map<String, dynamic> toMap() => {
        'lectureCode': lectureCode,
      };
}
