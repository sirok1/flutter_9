class Game {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final int price;
  // final List<String> tags;

  Game(this.id, this.name, this.description, this.imageUrl, this.price);

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      json['ID'],
      json['Name'],
      json['Description'],
      json['ImageURL'],
      json['Price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ID': id,
      'Name': name,
      'Description': description,
      'ImageURL': imageUrl,
      'Price': price
    };
  }
}
