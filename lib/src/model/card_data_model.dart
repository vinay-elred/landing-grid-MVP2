// ignore_for_file: public_member_api_docs, sort_constructors_first
class CardDataModel {
  final String name;
  final String company;
  final String title;
  final String dpUrl;
  final String backgroundUrl;
  final List<String> tags;
  CardDataModel({
    required this.name,
    required this.company,
    required this.title,
    required this.dpUrl,
    required this.backgroundUrl,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'company': company,
      'title': title,
      'dpUrl': dpUrl,
      'backgroundUrl': backgroundUrl,
      'tags': tags,
    };
  }

  factory CardDataModel.fromMap(Map<String, dynamic> map) {
    return CardDataModel(
      name: map['name'] as String,
      company: map['company'] as String,
      title: map['title'] as String,
      dpUrl: map['dpUrl'] as String,
      backgroundUrl: map['backgroundUrl'] as String,
      tags: List<String>.from((map['tags'] as List)),
    );
  }
}
