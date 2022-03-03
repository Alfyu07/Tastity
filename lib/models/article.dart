import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@Freezed()
class Article with _$Article {
  const factory Article({
    required int id,
    String? title,
    String? imgUrl,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

List<Article> dummyArticles = [
  Article(
      id: 1,
      title: "Pemilhan sampah yang benar",
      imgUrl: 'assets/article2.svg'),
  Article(
    id: 2,
    title: "Membuang masker yang benar",
    imgUrl: 'assets/article1.svg',
  ),
];
