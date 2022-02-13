class LookbookImage {
  final String imageURL;
  final String name;
  final String id;

  LookbookImage({
    required this.imageURL,
    required this.id,
    this.name = "unnamed"
  }); 

  String get getImageURL => imageURL;
  String get getName => name;
  String get getId => id;

  
}