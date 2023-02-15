class Student
  attr_reader :name,
              :age
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @age = attributes.fetch(:age)
  end
end
