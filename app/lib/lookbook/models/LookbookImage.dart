class LookbookImage {
  final String? imageURL;
  final String name;

  LookbookImage({
    this.imageURL,
    this.name = "unnamed"
  }); 

  String? get getImageURL => imageURL;
  String? get getName => name;
}