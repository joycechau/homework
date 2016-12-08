class Corgi
  attr_reader :name

  def self.name
    "Corgi"
  end

  def initialize(name)
    @name = name
  end

  define_method(:output_name) do
    puts name
  end
end

corgi1 = Corgi.new("doofus")
puts corgi1.output_name
