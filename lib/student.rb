class Student
  attr_reader :name,
              :age,
              :scores
  def initialize(attributes)
    @name = attributes.fetch(:name)
    @age = attributes.fetch(:age)
    @scores = []
  end

  def log_score(score)
    scores << score
  end
end

