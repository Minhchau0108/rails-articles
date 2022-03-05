class SignInService
  include Callable
  def initialize(attributes:)
    @email = attributes[:email]
    @password = attributes[:password]
  end

  def call
    user = User.find_by(email: @email)
    return unless user
    return unless user.authenticate(@password)


    expired_token = 1.weeks.from_now
    token = JwtEncode.new({ user_id: user.id }, expired_token).call
    payload = {
      token: token,
      expired_token: expired_token.strftime('%m-%d-%YT%H:%M:%S%Z'),
      user_name: user.name
    }
  end

end
