module Queries
  class ArticleDetail
    def initialize(article_id)
      @article_id = article_id
    end

    def resolve
      Article.find(@article_id)
    end
  end
end
