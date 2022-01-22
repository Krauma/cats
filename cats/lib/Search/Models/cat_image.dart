class CatImage {
  String imageUrl;

  CatImage({required this.imageUrl});

  factory CatImage.fromJson(Map<String, dynamic> json) {
    return CatImage(imageUrl: json['url']);
  }
}
