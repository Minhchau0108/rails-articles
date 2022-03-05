class JwtEncode
  def initialize(token)
    @token = token
  end

  def call
    decoded = JWT.decode(token, secret_key)[0]
    HashWithIndifferentAccess.new decoded
  end

  private

  attr_reader :token

  def secret_key
    ENV['APP_SECRET'] || 'secret'
  end
end