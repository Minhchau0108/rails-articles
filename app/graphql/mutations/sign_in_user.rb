module Mutations
  class SignInUser < BaseMutation


    argument :attributes, Types::SignInUserAttributesTypes, required: false

    field :token, String, null: true
    field :expired_token, String, null: true
    field :user_name, String, null: true

    def resolve(attributes: nil)
      #basic validate
      return unless attributes

      result = ::SignInService.(attributes: attributes.to_hash.merge)
      puts result
      result
    end
  end
end
