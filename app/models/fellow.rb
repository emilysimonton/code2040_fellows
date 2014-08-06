class Fellow < ActiveRecord::Base

	def to_param
		"#{slug}"
	end

  def self.sort_by_name
    self.all.sort_by do |fellow|
      fellow.name
    end
  end

  def self.sort_by_year
    self.all.sort_by do |fellow|
      fellow.year
    end
  end

  def self.current_year
    fellow = self.sort_by_year.last
    fellow.year
  end

  def current_student?
    true if self.year == Fellow.current_year
  end

  def self.alumnae
    alumnae = []
    self.all.each do |fellow|
      if !fellow.current_student?
        alumnae << fellow
      end
    end
    alumnae
  end

  def self.current_students
    current_students = []
    self.all.each do |fellow|
      if fellow.current_student?
        current_students << fellow
      end 
    end
    current_students
  end
    
end
