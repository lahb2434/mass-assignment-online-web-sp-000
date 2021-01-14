class Person
  attr_accessor
  def initialize(attribute)
    attribute.each do |key, value|
      Person.send(:attr_accessor, "#{key}")
      self.send("#{key}=", value)
    end
  end
end