module ExtendMe
  def show(thing)
    puts "Hey #{thing}, this is an awesome instance method defined in ExtendMe Module"
  end

  def self.internal(thing)
    puts "Hello #{thing} from ExtendMe Module."
  end
end
