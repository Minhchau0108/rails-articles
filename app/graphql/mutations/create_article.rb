module Mutations
  class CreateArticle < BaseMutation
    argument :attributes, Types::CreateArticleAttributesTypes, required: false

    type Types::ArticleType

    def resolve(attributes:)
      # Raise an exception if no user is present
      raise GraphQL::ExecutionError, 'Authentication required' if context[:current_user].blank?

      Article.create!(attributes.to_hash.merge)
    end
  end
end
