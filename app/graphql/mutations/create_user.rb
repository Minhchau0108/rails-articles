module Mutations
  class CreateUser < BaseMutation


    argument :attributes, Types::CreateUserAttributesTypes, required: false

    type Types::UserType

    def resolve(attributes:)
        ::CreateUserService.(attributes: attributes.to_hash.merge)
    end
  end
end
