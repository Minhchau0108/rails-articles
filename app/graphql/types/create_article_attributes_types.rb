module Types
  class CreateArticleAttributesTypes < GraphQL::Schema::InputObject

    argument :title, String, required: true
    argument :body, String, required: true
    argument :summary, String, required: true
    argument :published_at, String, required: false
    argument :is_favorite, Boolean, required: false
  end
end
