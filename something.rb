class Something
  attr_reader :key, :value

  def initialize(key:, value:)
    @key = key
    @value = value
    puts "DONE"
  end

end