require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'exists' do
    course = Course.new("Calculus", 2)

    expect(course).to be_an_instance_of(Course)
  end

  it' has attributes' do
    course = Course.new("Calculus", 2)

    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
  end

  it 'defines if course is full?' do
    course = Course.new("Calculus", 2)

    expect(course.students).to eq([])
    expect(course.full?).to eq(false)
  end





end