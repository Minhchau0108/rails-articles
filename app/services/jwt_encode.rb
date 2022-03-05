class JwtEncode
  def initialize(payload, exp = 1.weeks.from_now)
    @payload = payload
    @exp = exp
  end

  def call
    payload[:exp] = exp.to_i
    JWT.encode(payload, secret_key)
  end

  private

  attr_reader :payload, :exp

  def secret_key
    ENV['APP_SECRET'] || 'secret'
  end
end