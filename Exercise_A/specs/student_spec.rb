require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

  def setup
    @record_1 = Student.new('John', 'E28', 'Hi - how are you today?', 'Ruby')
  end

  def test_get_name
    student = Student.new('John', 'E28', 'Hi - how are you today?', 'Ruby')
    assert_equal('John', student.name())
  end

  def test_get_cohort
    student = Student.new('John', 'E28', 'Hi - how are you today?', 'Ruby')
    assert_equal('E28', student.cohort())
  end

  def test_set_name
    @record_1.name = 'Alice'
    assert_equal('Alice', @record_1.name())
  end

  def test_set_cohort
    @record_1.cohort = 'G25'
    assert_equal('G25', @record_1.cohort())
  end

  def test_give_message
    @record_1.message = 'I can talk'
    assert_equal('I can talk', @record_1.message())
  end

  def test_love_ruby
    assert_equal('I love Ruby', @record_1.love_ruby('Ruby'))
  end

end
