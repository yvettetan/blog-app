class HomeController < ApplicationController
  def index
    @article_feature1 = Article.last
    @article_feature2 = Article.second_to_last
    @feature_articles = Article.all.shuffle.slice(0, 2)
  end
end
