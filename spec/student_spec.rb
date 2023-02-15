require 'rspec'
require './lib/student.rb'

RSpec.describe Student do
  it 'exists' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student).to be_an_instance_of(Student)
  end

  it 'has attributes' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.name).to eq("Morgan")
    expect(student.age).to eq(21)
  end

  describe '#logs sudents scores' do
    it 'will log the students score' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student.scores).to eq([])

      score_1 = student.log_score(89)
      score_2 = student.log_score(78)

      expect(student.scores).to eq([89, 78])
    end

    it 'will average the students score for grade' do
      student = Student.new({name: "Morgan", age: 21})

      score_1 = student.log_score(89)
      score_2 = student.log_score(78)

      expect(student.grade).to eq(83.5)
    end
  end
end