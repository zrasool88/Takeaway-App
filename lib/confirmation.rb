class Confirmation

  attr_reader :body, :from, :to

  def initialize(body, from, to)
    @body = body
    @from = from
    @to = to
  end

end