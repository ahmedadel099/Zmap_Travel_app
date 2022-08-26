class BlogsModel {

  String image,authorimage, title, author , date,firstLitter, article;

  BlogsModel(this.image,this.authorimage, this.title, this.author, this.date,this.firstLitter ,this.article);

  BlogsModel.fromJson(Map <dynamic, dynamic> map){
    if (map == null) {
      return;
    }

    image = map['image'];
    authorimage = map['authorimage'];
    article = map['article'];
    title = map['title'];
    author = map['author'];
    firstLitter = map['firstLitter'];
    date = map['date'];
  }

  toJson() {
    return {
      'image': image,
      'authorimage': authorimage,
      'article': article,
      'title': title,
      'author': author,
      'date': date,
      'firstLitter': firstLitter,
    };
  }
}