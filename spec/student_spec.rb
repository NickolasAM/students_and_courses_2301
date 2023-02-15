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
end