class NegativeNumberError < StandardError
  def initialize(msg = "Negative number not allowed")
    super
  end
end