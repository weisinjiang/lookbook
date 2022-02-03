class LookbookImage {
  final String imageURL;
  final String name;

  LookbookImage({
    required this.imageURL,
    this.name = "unnamed"
  }); 

  String? get getImageURL => imageURL;
  String? get getName => name;
}