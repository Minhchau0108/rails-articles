module Types
  class SignInUserAttributesTypes < GraphQL::Schema::InputObject

    argument :email, String, required: true
    argument :password, String, required: true
  end
end
