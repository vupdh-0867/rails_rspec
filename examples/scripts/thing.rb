class Thing
  def initialize attribute
    @attribute = attribute
  end

  def widgets
    @widgets ||= []
  end
end
