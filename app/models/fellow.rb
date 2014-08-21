class Fellow < ActiveRecord::Base
scope :approval_queue, lambda { where(:display => false) }

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

  def self.all_years
    @years = (Fellow.all.sort_by{|fellow| fellow.year}.first.year..Fellow.all.sort_by{|fellow| fellow.year}.last.year)
  end

  def current_student?
    true if self.year == Fellow.current_year
  end

  def self.alumnae
    alumnae = []
    self.all.each do |fellow|
      if !fellow.current_student && fellow.display
        alumnae << fellow
      end
    end
    alumnae
  end

  def self.current_students
    current_students = []
    self.all.each do |fellow|
      if fellow.current_student && fellow.display
        current_students << fellow
      end 
    end
    current_students
  end

  def self.not_approved
    for_approval = []
    self.all.each do |fellow|
      for_approval << fellow if !fellow.display
    end
    for_approval
  end
    
end
