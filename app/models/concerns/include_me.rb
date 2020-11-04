module IncludeMe
  def show(thing)
    puts "Hello #{thing}, this is an instance method defined in IncludeMe Module."
  end

  def self.internal(thing)
    puts "Hello #{thing} from IncludeMe Module."
  end
end
