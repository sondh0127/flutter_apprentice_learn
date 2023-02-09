part of 'explore_recipe.dart';

class Instruction {
  String imageUrl;
  String description;
  int durationInMinutes;

  Instruction({
    required this.imageUrl,
    required this.description,
    required this.durationInMinutes,
  });

  factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
        imageUrl: json['imageUrl'],
        description: json['description'],
        durationInMinutes: json['durationInMinutes'],
      );

  // Map<String, dynamic> toJson() => {
  //       'imageUrl': imageUrl,
  //       'description': description,
  //       'durationInMinutes': durationInMinutes,
  //     };
}
