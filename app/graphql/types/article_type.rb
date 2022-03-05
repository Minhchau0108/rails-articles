module Types
  class ArticleType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :body, String, null: false
    field :summary, String, null: false
    field :published_at, String, null: false
    field :slug, String, null: false
  end
end
