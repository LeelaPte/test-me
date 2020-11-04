class Shubito
  include IncludeMe
  extend ExtendMe

  attr_accessor :name

  def initialize(behavior=nil)
    @name = "croockshanks"
    @behavior = behavior
  end
end
