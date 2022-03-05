module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField


    field :articles, [Types::ArticleType], null: false
    def articles
      Article.all
    end

    field :article_detail,
          Types::ArticleType,
          null: false,
          description: 'Get detail about article' do
      argument :article_id, ID, required: true
    end
    def article_detail(article_id:)
      Queries::ArticleDetail.new(article_id).resolve
    end
    end
end
