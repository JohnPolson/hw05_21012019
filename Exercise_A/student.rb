class Student

  attr_accessor :name, :cohort, :message, :fave_language

def initialize(name, cohort, message, fave_language)
    @name = name
    @cohort = cohort
    @message = message
    @fave_language = fave_language
  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def give_message()
    return @message
  end

  def love_ruby(fave_language)
    my_fave_language = "I love #{fave_language}"
    return my_fave_language
  end


end
