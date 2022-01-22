class CatVote {
  String imageId;
  int value;

  CatVote({
    required this.imageId,
    required this.value,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image_id'] = imageId;
    data['value'] = value;
    return data;
  }
}
