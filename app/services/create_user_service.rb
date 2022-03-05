
  class CreateUserService
    include Callable

    def initialize(attributes:)
      @attributes = attributes
    end

    def call
      User.create!(user_attributes)
    end

    def user_attributes
      {
        name: @attributes[:name],
        email: @attributes[:email],
        password: @attributes[:password]
      }
    end


  end
