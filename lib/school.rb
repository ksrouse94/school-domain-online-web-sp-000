class School
  def initialize(name)
    @name = name 
    @roster = {}
  end  

  attr_reader :name, :roster, :grade, :student_name
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
  
    #@roster[@grade] = []
    #@roster[@grade] << @student_name
    
    keys = @roster.keys
    
    if !keys.include?(@grade) 
      @roster[@grade] = []
      @roster[@grade] << @student_name
    else
      @roster[@grade] << @student_name
    end  
  
  end  

  def grade(grade)
    @grade = grade
    
    return @roster[@grade]
    
  end

  def sort 
    @roster.each do |grade, name_array|
      name_array.sort!
    end  
  end  
  
end  